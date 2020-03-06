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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        mbmi             ever_wasted   n_cell       n
------------  ---------------  -----------------------------  --------------  ------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217
0-24 months   LCNI-5           MALAWI                         Normal weight              0      651     837
0-24 months   LCNI-5           MALAWI                         Normal weight              1       41     837
0-24 months   LCNI-5           MALAWI                         Underweight                0      120     837
0-24 months   LCNI-5           MALAWI                         Underweight                1       25     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight              0      154     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight              1       68     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                0       15     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                1       17     254
0-24 months   MAL-ED           BRAZIL                         Normal weight              0      194     221
0-24 months   MAL-ED           BRAZIL                         Normal weight              1       17     221
0-24 months   MAL-ED           BRAZIL                         Underweight                0        8     221
0-24 months   MAL-ED           BRAZIL                         Underweight                1        2     221
0-24 months   MAL-ED           INDIA                          Normal weight              0      105     242
0-24 months   MAL-ED           INDIA                          Normal weight              1       88     242
0-24 months   MAL-ED           INDIA                          Underweight                0       20     242
0-24 months   MAL-ED           INDIA                          Underweight                1       29     242
0-24 months   MAL-ED           NEPAL                          Normal weight              0      164     238
0-24 months   MAL-ED           NEPAL                          Normal weight              1       74     238
0-24 months   MAL-ED           NEPAL                          Underweight                0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight                1        0     238
0-24 months   MAL-ED           PERU                           Normal weight              0      260     290
0-24 months   MAL-ED           PERU                           Normal weight              1       25     290
0-24 months   MAL-ED           PERU                           Underweight                0        3     290
0-24 months   MAL-ED           PERU                           Underweight                1        2     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              0      205     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              1       57     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                0        8     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                1        0     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0      210     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       32     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight              0      282     624
0-24 months   NIH-Birth        BANGLADESH                     Normal weight              1      238     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight                0       44     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight                1       60     624
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight              0      470     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight              1      217     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                0       36     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                1       32     755
0-24 months   PROBIT           BELARUS                        Normal weight              0     9524   13728
0-24 months   PROBIT           BELARUS                        Normal weight              1     3681   13728
0-24 months   PROBIT           BELARUS                        Underweight                0      350   13728
0-24 months   PROBIT           BELARUS                        Underweight                1      173   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight              0      364     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight              1      178     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                0       64     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                1       63     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight              0      666    1389
0-24 months   SAS-CompFeed     INDIA                          Normal weight              1      376    1389
0-24 months   SAS-CompFeed     INDIA                          Underweight                0      152    1389
0-24 months   SAS-CompFeed     INDIA                          Underweight                1      195    1389
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              0     7029    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              1     2252    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                0      347    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                1      169    9797
0-6 months    LCNI-5           MALAWI                         Normal weight              0      220     271
0-6 months    LCNI-5           MALAWI                         Normal weight              1        4     271
0-6 months    LCNI-5           MALAWI                         Underweight                0       47     271
0-6 months    LCNI-5           MALAWI                         Underweight                1        0     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight              0      177     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight              1       45     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                0       19     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                1       13     254
0-6 months    MAL-ED           BRAZIL                         Normal weight              0      199     221
0-6 months    MAL-ED           BRAZIL                         Normal weight              1       12     221
0-6 months    MAL-ED           BRAZIL                         Underweight                0        8     221
0-6 months    MAL-ED           BRAZIL                         Underweight                1        2     221
0-6 months    MAL-ED           INDIA                          Normal weight              0      135     242
0-6 months    MAL-ED           INDIA                          Normal weight              1       58     242
0-6 months    MAL-ED           INDIA                          Underweight                0       28     242
0-6 months    MAL-ED           INDIA                          Underweight                1       21     242
0-6 months    MAL-ED           NEPAL                          Normal weight              0      190     238
0-6 months    MAL-ED           NEPAL                          Normal weight              1       48     238
0-6 months    MAL-ED           NEPAL                          Underweight                0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight                1        0     238
0-6 months    MAL-ED           PERU                           Normal weight              0      274     290
0-6 months    MAL-ED           PERU                           Normal weight              1       11     290
0-6 months    MAL-ED           PERU                           Underweight                0        5     290
0-6 months    MAL-ED           PERU                           Underweight                1        0     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight              0      234     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight              1       28     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                0        8     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                1        0     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0      230     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0       13     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight              0      341     622
0-6 months    NIH-Birth        BANGLADESH                     Normal weight              1      178     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight                0       59     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight                1       44     622
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight              0      513     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight              1      174     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                0       48     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                1       20     755
0-6 months    PROBIT           BELARUS                        Normal weight              0     9601   13728
0-6 months    PROBIT           BELARUS                        Normal weight              1     3604   13728
0-6 months    PROBIT           BELARUS                        Underweight                0      352   13728
0-6 months    PROBIT           BELARUS                        Underweight                1      171   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight              0      414     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight              1      128     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                0       79     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                1       48     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight              0      841    1382
0-6 months    SAS-CompFeed     INDIA                          Normal weight              1      197    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight                0      243    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight                1      101    1382
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1986    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      321    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       30    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        8    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight              0     7587    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight              1     1664    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                0      391    9760
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                1      118    9760
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              0     2161    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              1      602    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                0      323    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                1      131    3217
6-24 months   LCNI-5           MALAWI                         Normal weight              0      646     823
6-24 months   LCNI-5           MALAWI                         Normal weight              1       38     823
6-24 months   LCNI-5           MALAWI                         Underweight                0      114     823
6-24 months   LCNI-5           MALAWI                         Underweight                1       25     823
6-24 months   MAL-ED           BANGLADESH                     Normal weight              0      174     240
6-24 months   MAL-ED           BANGLADESH                     Normal weight              1       35     240
6-24 months   MAL-ED           BANGLADESH                     Underweight                0       23     240
6-24 months   MAL-ED           BANGLADESH                     Underweight                1        8     240
6-24 months   MAL-ED           BRAZIL                         Normal weight              0      191     206
6-24 months   MAL-ED           BRAZIL                         Normal weight              1        6     206
6-24 months   MAL-ED           BRAZIL                         Underweight                0        9     206
6-24 months   MAL-ED           BRAZIL                         Underweight                1        0     206
6-24 months   MAL-ED           INDIA                          Normal weight              0      138     234
6-24 months   MAL-ED           INDIA                          Normal weight              1       48     234
6-24 months   MAL-ED           INDIA                          Underweight                0       32     234
6-24 months   MAL-ED           INDIA                          Underweight                1       16     234
6-24 months   MAL-ED           NEPAL                          Normal weight              0      199     235
6-24 months   MAL-ED           NEPAL                          Normal weight              1       36     235
6-24 months   MAL-ED           NEPAL                          Underweight                0        0     235
6-24 months   MAL-ED           NEPAL                          Underweight                1        0     235
6-24 months   MAL-ED           PERU                           Normal weight              0      248     269
6-24 months   MAL-ED           PERU                           Normal weight              1       16     269
6-24 months   MAL-ED           PERU                           Underweight                0        3     269
6-24 months   MAL-ED           PERU                           Underweight                1        2     269
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              0      210     254
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              1       37     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                0        7     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                1        0     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0      207     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       25     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0       10     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     245
6-24 months   NIH-Birth        BANGLADESH                     Normal weight              0      327     542
6-24 months   NIH-Birth        BANGLADESH                     Normal weight              1      122     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight                0       56     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight                1       37     542
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight              0      585     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight              1       78     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                0       49     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                1       18     730
6-24 months   PROBIT           BELARUS                        Normal weight              0    13079   13720
6-24 months   PROBIT           BELARUS                        Normal weight              1      118   13720
6-24 months   PROBIT           BELARUS                        Underweight                0      517   13720
6-24 months   PROBIT           BELARUS                        Underweight                1        6   13720
6-24 months   PROVIDE          BANGLADESH                     Normal weight              0      434     614
6-24 months   PROVIDE          BANGLADESH                     Normal weight              1       72     614
6-24 months   PROVIDE          BANGLADESH                     Underweight                0       81     614
6-24 months   PROVIDE          BANGLADESH                     Underweight                1       27     614
6-24 months   SAS-CompFeed     INDIA                          Normal weight              0      701    1276
6-24 months   SAS-CompFeed     INDIA                          Normal weight              1      254    1276
6-24 months   SAS-CompFeed     INDIA                          Underweight                0      182    1276
6-24 months   SAS-CompFeed     INDIA                          Underweight                1      139    1276
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1630    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      312    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       24    1972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        6    1972
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              0     7367    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              1      772    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                0      382    8597
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                1       76    8597


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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/85382f06-354d-451f-a6fa-a838ee5b1a5a/acde05e5-f7fe-4eca-9c3b-87f1f7f52def/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/85382f06-354d-451f-a6fa-a838ee5b1a5a/acde05e5-f7fe-4eca-9c3b-87f1f7f52def/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/85382f06-354d-451f-a6fa-a838ee5b1a5a/acde05e5-f7fe-4eca-9c3b-87f1f7f52def/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/85382f06-354d-451f-a6fa-a838ee5b1a5a/acde05e5-f7fe-4eca-9c3b-87f1f7f52def/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178791    0.1880785   0.2476797
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2885463    0.2268110   0.3502815
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0592486    0.0416478   0.0768493
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.1724138    0.1108938   0.2339338
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.3063063    0.2455502   0.3670624
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.5312500    0.3580093   0.7044907
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.4559585    0.3855465   0.5263706
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.5918367    0.4539358   0.7297376
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.4576923    0.4148370   0.5005476
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.5769231    0.4818958   0.6719504
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.3158661    0.2810821   0.3506501
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.4705882    0.3518751   0.5893014
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.2787580    0.2165659   0.3409502
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.3307839    0.2506670   0.4109009
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.3284133    0.2888461   0.3679804
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.4960630    0.4090413   0.5830847
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.3608445    0.3099545   0.4117346
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.5619597    0.4853370   0.6385823
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2353706    0.2178996   0.2528416
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3421053    0.2443123   0.4398983
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2426463    0.2339244   0.2513681
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3275194    0.2870242   0.3680146
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.2027027    0.1497159   0.2556896
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.4062500    0.2357485   0.5767515
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.3005181    0.2357007   0.3653356
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.4285714    0.2897227   0.5674201
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.3429672    0.3020945   0.3838400
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.4271845    0.3315765   0.5227924
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2532751    0.2207339   0.2858163
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                0.2941176    0.1857479   0.4024874
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.2729269    0.2104962   0.3353577
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.3269598    0.2468984   0.4070213
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.2361624    0.2003792   0.2719456
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.3779528    0.2935607   0.4623448
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.1897881    0.1500801   0.2294960
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.2936047    0.2263064   0.3609029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417    0.1248886   0.1533949
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263    0.1264891   0.2945635
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1798724    0.1720454   0.1876995
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2318271    0.1951645   0.2684897
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178791    0.1880785   0.2476797
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2885463    0.2268110   0.3502815
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0555556    0.0383790   0.0727321
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.1798561    0.1159691   0.2437431
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.1674641    0.1167366   0.2181917
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.2580645    0.1037094   0.4124197
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.2580645    0.1950459   0.3210831
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.3333333    0.1996888   0.4669779
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.2717149    0.2305305   0.3128994
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.3978495    0.2982815   0.4974174
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.1176471    0.0931056   0.1421885
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.2686567    0.1624461   0.3748673
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0089414    0.0044666   0.0134163
6-24 months   PROBIT           BELARUS                        Underweight          NA                0.0114723   -0.0012562   0.0242007
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.1422925    0.1118285   0.1727565
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.2500000    0.1682683   0.3317317
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.2659686    0.2261656   0.3057716
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.4330218    0.3585179   0.5075258
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591    0.1441588   0.1771595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000000    0.1128772   0.2871228
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0948519    0.0884859   0.1012180
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1659389    0.1318656   0.2000121


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2807401   0.2185990   0.3428812
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4110871   0.3516836   0.4704906
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2471165   0.2385749   0.2556580
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2749854   0.2126043   0.3373666
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2156295   0.1693905   0.2618686
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1825820   0.1749172   0.1902467
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0090379   0.0045686   0.0135072
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3079937   0.2595409   0.3564465
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0986391   0.0923357   0.1049424


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.324341   1.0186019   1.721849
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     2.910008   1.8291752   4.629490
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.734375   1.1840739   2.540430
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.298006   0.9814694   1.716629
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.260504   1.0429408   1.523453
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.489835   1.1313493   1.961912
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.186635   1.0122574   1.391051
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.510484   1.2209357   1.868699
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.557346   1.4460121   1.677251
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.453475   1.0817938   1.952857
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.349781   1.1867060   1.535266
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     2.004167   1.2223602   3.286007
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     1.426108   0.9663206   2.104669
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.245555   0.9665910   1.605029
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.161258   0.7860679   1.715525
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.197976   1.0210121   1.405611
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     1.600394   1.2218993   2.096130
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.547013   1.3448278   1.779596
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.288842   1.0938683   1.518568
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.324341   1.0186019   1.721849
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     3.237410   2.0215266   5.184608
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.541014   0.7881894   3.012884
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.291667   0.8077416   2.065516
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.464217   1.0927895   1.961887
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     2.283582   1.4604522   3.570639
6-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.283048   0.4377605   3.760530
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.756944   1.1886106   2.597027
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.628094   1.4774336   1.794118
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244872   0.7957064   1.947585
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.749451   1.4095572   2.171306


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0099729   -0.0003828   0.0203286
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0196045    0.0081455   0.0310635
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0283394    0.0034487   0.0532300
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0275125   -0.0045877   0.0596128
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0198718    0.0021509   0.0375927
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0139352    0.0023538   0.0255167
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0019820   -0.0000412   0.0040053
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0318259    0.0130062   0.0506456
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.0502426    0.0390938   0.0613914
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0017296   -0.0008131   0.0042724
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0044702    0.0022564   0.0066840
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.0256438    0.0016595   0.0496280
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.0259281   -0.0057712   0.0576275
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.0139459   -0.0034475   0.0313393
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0036785   -0.0065466   0.0139036
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0020585    0.0000417   0.0040753
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.0269169    0.0090120   0.0448218
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.0258415    0.0148713   0.0368116
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0027095    0.0007410   0.0046780
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0099729   -0.0003828   0.0203286
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0209937    0.0093756   0.0326117
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0117026   -0.0096347   0.0330398
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0154398   -0.0151196   0.0459991
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0216430    0.0027253   0.0405607
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0138598    0.0033662   0.0243534
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0000965   -0.0003675   0.0005605
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0189453    0.0032632   0.0346274
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.0420251    0.0289092   0.0551411
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0037871    0.0019099   0.0056643


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0437693   -0.0035915   0.0888950
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.2486206    0.1007232   0.3721944
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0846847    0.0073253   0.1560154
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0569062   -0.0122225   0.1213139
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0416107    0.0036534   0.0781220
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0422534    0.0065009   0.0767193
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0070601   -0.0003556   0.0144207
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0883465    0.0345568   0.1391393
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.1222188    0.1053728   0.1387477
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0072948   -0.0035151   0.0179883
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0180894    0.0090976   0.0269996
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.1123020    0.0024570   0.2100513
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.0794255   -0.0228573   0.1714802
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.0390738   -0.0109282   0.0866026
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0143159   -0.0262793   0.0533054
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0074859   -0.0000850   0.0149994
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.1023147    0.0320906   0.1674438
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.1198420    0.0803594   0.1576294
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0148400    0.0040096   0.0255527
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0437693   -0.0035915   0.0888950
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.2742504    0.1211184   0.4007015
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0653166   -0.0608054   0.1764436
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0564516   -0.0619620   0.1616616
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0737768    0.0071712   0.1359140
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.1053922    0.0238808   0.1800968
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0106745   -0.0420841   0.0607620
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.1174991    0.0163952   0.2082106
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.1364481    0.1054288   0.1663917
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102192   0.0174499
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0383936    0.0193005   0.0571150
