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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mbmi             pers_wast   n_cell       n
------------  ---------------  -----------------------------  --------------  ----------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1269    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight            1      146    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight              0      183    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1645
0-24 months   JiVitA-3         BANGLADESH                     Normal weight            0     9213   15759
0-24 months   JiVitA-3         BANGLADESH                     Normal weight            1      501   15759
0-24 months   JiVitA-3         BANGLADESH                     Underweight              0     5651   15759
0-24 months   JiVitA-3         BANGLADESH                     Underweight              1      394   15759
0-24 months   LCNI-5           MALAWI                         Normal weight            0      595     716
0-24 months   LCNI-5           MALAWI                         Normal weight            1        4     716
0-24 months   LCNI-5           MALAWI                         Underweight              0      115     716
0-24 months   LCNI-5           MALAWI                         Underweight              1        2     716
0-24 months   MAL-ED           BANGLADESH                     Normal weight            0      208     248
0-24 months   MAL-ED           BANGLADESH                     Normal weight            1        8     248
0-24 months   MAL-ED           BANGLADESH                     Underweight              0       27     248
0-24 months   MAL-ED           BANGLADESH                     Underweight              1        5     248
0-24 months   MAL-ED           BRAZIL                         Normal weight            0      204     216
0-24 months   MAL-ED           BRAZIL                         Normal weight            1        2     216
0-24 months   MAL-ED           BRAZIL                         Underweight              0       10     216
0-24 months   MAL-ED           BRAZIL                         Underweight              1        0     216
0-24 months   MAL-ED           INDIA                          Normal weight            0      177     240
0-24 months   MAL-ED           INDIA                          Normal weight            1       14     240
0-24 months   MAL-ED           INDIA                          Underweight              0       42     240
0-24 months   MAL-ED           INDIA                          Underweight              1        7     240
0-24 months   MAL-ED           NEPAL                          Normal weight            0      234     238
0-24 months   MAL-ED           NEPAL                          Normal weight            1        4     238
0-24 months   MAL-ED           NEPAL                          Underweight              0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight              1        0     238
0-24 months   MAL-ED           PERU                           Normal weight            0      277     283
0-24 months   MAL-ED           PERU                           Normal weight            1        1     283
0-24 months   MAL-ED           PERU                           Underweight              0        5     283
0-24 months   MAL-ED           PERU                           Underweight              1        0     283
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight            0      256     266
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight            1        2     266
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight              0        8     266
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight              1        0     266
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-24 months   NIH-Birth        BANGLADESH                     Normal weight            0      410     534
0-24 months   NIH-Birth        BANGLADESH                     Normal weight            1       29     534
0-24 months   NIH-Birth        BANGLADESH                     Underweight              0       77     534
0-24 months   NIH-Birth        BANGLADESH                     Underweight              1       18     534
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight            0      645     730
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight            1       18     730
0-24 months   NIH-Crypto       BANGLADESH                     Underweight              0       59     730
0-24 months   NIH-Crypto       BANGLADESH                     Underweight              1        8     730
0-24 months   PROBIT           BELARUS                        Normal weight            0    13101   13714
0-24 months   PROBIT           BELARUS                        Normal weight            1       91   13714
0-24 months   PROBIT           BELARUS                        Underweight              0      517   13714
0-24 months   PROBIT           BELARUS                        Underweight              1        5   13714
0-24 months   PROVIDE          BANGLADESH                     Normal weight            0      515     640
0-24 months   PROVIDE          BANGLADESH                     Normal weight            1        7     640
0-24 months   PROVIDE          BANGLADESH                     Underweight              0      110     640
0-24 months   PROVIDE          BANGLADESH                     Underweight              1        8     640
0-24 months   SAS-CompFeed     INDIA                          Normal weight            0      855    1257
0-24 months   SAS-CompFeed     INDIA                          Normal weight            1       67    1257
0-24 months   SAS-CompFeed     INDIA                          Underweight              0      297    1257
0-24 months   SAS-CompFeed     INDIA                          Underweight              1       38    1257
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight            0     7609    8157
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight            1      120    8157
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight              0      408    8157
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight              1       20    8157
0-6 months    JiVitA-3         BANGLADESH                     Normal weight            0       32      50
0-6 months    JiVitA-3         BANGLADESH                     Normal weight            1        1      50
0-6 months    JiVitA-3         BANGLADESH                     Underweight              0       16      50
0-6 months    JiVitA-3         BANGLADESH                     Underweight              1        1      50
0-6 months    MAL-ED           BANGLADESH                     Normal weight            0      211     248
0-6 months    MAL-ED           BANGLADESH                     Normal weight            1        5     248
0-6 months    MAL-ED           BANGLADESH                     Underweight              0       30     248
0-6 months    MAL-ED           BANGLADESH                     Underweight              1        2     248
0-6 months    MAL-ED           BRAZIL                         Normal weight            0      205     216
0-6 months    MAL-ED           BRAZIL                         Normal weight            1        1     216
0-6 months    MAL-ED           BRAZIL                         Underweight              0       10     216
0-6 months    MAL-ED           BRAZIL                         Underweight              1        0     216
0-6 months    MAL-ED           INDIA                          Normal weight            0      178     239
0-6 months    MAL-ED           INDIA                          Normal weight            1       12     239
0-6 months    MAL-ED           INDIA                          Underweight              0       42     239
0-6 months    MAL-ED           INDIA                          Underweight              1        7     239
0-6 months    MAL-ED           NEPAL                          Normal weight            0      231     238
0-6 months    MAL-ED           NEPAL                          Normal weight            1        7     238
0-6 months    MAL-ED           NEPAL                          Underweight              0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight              1        0     238
0-6 months    MAL-ED           PERU                           Normal weight            0      278     283
0-6 months    MAL-ED           PERU                           Normal weight            1        0     283
0-6 months    MAL-ED           PERU                           Underweight              0        5     283
0-6 months    MAL-ED           PERU                           Underweight              1        0     283
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight            0      255     265
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight            1        2     265
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight              0        8     265
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight              1        0     265
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
0-6 months    NIH-Birth        BANGLADESH                     Normal weight            0      131     169
0-6 months    NIH-Birth        BANGLADESH                     Normal weight            1        9     169
0-6 months    NIH-Birth        BANGLADESH                     Underweight              0       27     169
0-6 months    NIH-Birth        BANGLADESH                     Underweight              1        2     169
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight            0      226     250
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight            1        4     250
0-6 months    NIH-Crypto       BANGLADESH                     Underweight              0       19     250
0-6 months    NIH-Crypto       BANGLADESH                     Underweight              1        1     250
0-6 months    PROBIT           BELARUS                        Normal weight            0    11628   13152
0-6 months    PROBIT           BELARUS                        Normal weight            1     1022   13152
0-6 months    PROBIT           BELARUS                        Underweight              0      454   13152
0-6 months    PROBIT           BELARUS                        Underweight              1       48   13152
0-6 months    PROVIDE          BANGLADESH                     Normal weight            0      511     637
0-6 months    PROVIDE          BANGLADESH                     Normal weight            1        8     637
0-6 months    PROVIDE          BANGLADESH                     Underweight              0      112     637
0-6 months    PROVIDE          BANGLADESH                     Underweight              1        6     637
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     1935    2016
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       49    2016
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       30    2016
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        2    2016
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight            0      549     584
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight            1        9     584
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight              0       23     584
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight              1        3     584
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight            0     1269    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight            1      146    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight              0      183    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight              1       47    1645
6-24 months   JiVitA-3         BANGLADESH                     Normal weight            0     9213   15759
6-24 months   JiVitA-3         BANGLADESH                     Normal weight            1      501   15759
6-24 months   JiVitA-3         BANGLADESH                     Underweight              0     5651   15759
6-24 months   JiVitA-3         BANGLADESH                     Underweight              1      394   15759
6-24 months   LCNI-5           MALAWI                         Normal weight            0      595     716
6-24 months   LCNI-5           MALAWI                         Normal weight            1        4     716
6-24 months   LCNI-5           MALAWI                         Underweight              0      115     716
6-24 months   LCNI-5           MALAWI                         Underweight              1        2     716
6-24 months   MAL-ED           BANGLADESH                     Normal weight            0      208     248
6-24 months   MAL-ED           BANGLADESH                     Normal weight            1        8     248
6-24 months   MAL-ED           BANGLADESH                     Underweight              0       27     248
6-24 months   MAL-ED           BANGLADESH                     Underweight              1        5     248
6-24 months   MAL-ED           BRAZIL                         Normal weight            0      204     216
6-24 months   MAL-ED           BRAZIL                         Normal weight            1        2     216
6-24 months   MAL-ED           BRAZIL                         Underweight              0       10     216
6-24 months   MAL-ED           BRAZIL                         Underweight              1        0     216
6-24 months   MAL-ED           INDIA                          Normal weight            0      177     240
6-24 months   MAL-ED           INDIA                          Normal weight            1       14     240
6-24 months   MAL-ED           INDIA                          Underweight              0       42     240
6-24 months   MAL-ED           INDIA                          Underweight              1        7     240
6-24 months   MAL-ED           NEPAL                          Normal weight            0      234     238
6-24 months   MAL-ED           NEPAL                          Normal weight            1        4     238
6-24 months   MAL-ED           NEPAL                          Underweight              0        0     238
6-24 months   MAL-ED           NEPAL                          Underweight              1        0     238
6-24 months   MAL-ED           PERU                           Normal weight            0      277     283
6-24 months   MAL-ED           PERU                           Normal weight            1        1     283
6-24 months   MAL-ED           PERU                           Underweight              0        5     283
6-24 months   MAL-ED           PERU                           Underweight              1        0     283
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight            0      256     266
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight            1        2     266
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight              0        8     266
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight              1        0     266
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            0      239     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight            1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              0       14     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight              1        0     253
6-24 months   NIH-Birth        BANGLADESH                     Normal weight            0      410     534
6-24 months   NIH-Birth        BANGLADESH                     Normal weight            1       29     534
6-24 months   NIH-Birth        BANGLADESH                     Underweight              0       77     534
6-24 months   NIH-Birth        BANGLADESH                     Underweight              1       18     534
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight            0      645     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight            1       18     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight              0       59     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight              1        8     730
6-24 months   PROBIT           BELARUS                        Normal weight            0    13101   13714
6-24 months   PROBIT           BELARUS                        Normal weight            1       91   13714
6-24 months   PROBIT           BELARUS                        Underweight              0      517   13714
6-24 months   PROBIT           BELARUS                        Underweight              1        5   13714
6-24 months   PROVIDE          BANGLADESH                     Normal weight            0      515     640
6-24 months   PROVIDE          BANGLADESH                     Normal weight            1        7     640
6-24 months   PROVIDE          BANGLADESH                     Underweight              0      110     640
6-24 months   PROVIDE          BANGLADESH                     Underweight              1        8     640
6-24 months   SAS-CompFeed     INDIA                          Normal weight            0      855    1257
6-24 months   SAS-CompFeed     INDIA                          Normal weight            1       67    1257
6-24 months   SAS-CompFeed     INDIA                          Underweight              0      297    1257
6-24 months   SAS-CompFeed     INDIA                          Underweight              1       38    1257
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            0     2028    2120
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight            1       57    2120
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              0       35    2120
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight              1        0    2120
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight            0     7609    8157
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight            1      120    8157
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight              0      408    8157
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight              1       20    8157


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/93405d38-3397-468b-8077-e38c7051aea9/345b4cc9-f159-4710-bdb6-5961da0e34e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93405d38-3397-468b-8077-e38c7051aea9/345b4cc9-f159-4710-bdb6-5961da0e34e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93405d38-3397-468b-8077-e38c7051aea9/345b4cc9-f159-4710-bdb6-5961da0e34e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93405d38-3397-468b-8077-e38c7051aea9/345b4cc9-f159-4710-bdb6-5961da0e34e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1031447    0.0780218   0.1282677
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.2035313    0.0871074   0.3199551
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0514288    0.0463438   0.0565138
0-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0653009    0.0589919   0.0716098
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0370370    0.0118010   0.0622731
0-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.1562500    0.0301929   0.2823071
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0732984    0.0362598   0.1103371
0-24 months   MAL-ED         INDIA          Underweight          NA                0.1428571    0.0446746   0.2410397
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0663309    0.0430218   0.0896400
0-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.1925760    0.1127814   0.2723705
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493    0.0147701   0.0395285
0-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030    0.0417059   0.1971000
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0068981    0.0037765   0.0100197
0-24 months   PROBIT         BELARUS        Underweight          NA                0.0095785   -0.0034154   0.0225725
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0134100    0.0035350   0.0232849
0-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.0677966    0.0224018   0.1131914
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0744045    0.0504081   0.0984008
0-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.1075385    0.0654231   0.1496538
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0155189    0.0127620   0.0182758
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0523449    0.0302295   0.0744602
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0631579    0.0284979   0.0978179
0-6 months    MAL-ED         INDIA          Underweight          NA                0.1428571    0.0446737   0.2410406
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0807696    0.0549902   0.1065489
0-6 months    PROBIT         BELARUS        Underweight          NA                0.0952743    0.0602749   0.1302737
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0154143    0.0048072   0.0260213
0-6 months    PROVIDE        BANGLADESH     Underweight          NA                0.0508475    0.0111785   0.0905164
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1037121    0.0784712   0.1289530
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.2010452    0.0858198   0.3162707
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0514293    0.0463216   0.0565370
6-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0653143    0.0589357   0.0716930
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0370370    0.0118010   0.0622731
6-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.1562500    0.0301929   0.2823071
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.0732984    0.0362598   0.1103371
6-24 months   MAL-ED         INDIA          Underweight          NA                0.1428571    0.0446746   0.2410397
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0656454    0.0424049   0.0888860
6-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.1874158    0.1061297   0.2687019
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0271493    0.0147701   0.0395285
6-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.1194030    0.0417059   0.1971000
6-24 months   PROBIT         BELARUS        Normal weight        NA                0.0068981    0.0037765   0.0100197
6-24 months   PROBIT         BELARUS        Underweight          NA                0.0095785   -0.0034154   0.0225725
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0134100    0.0035350   0.0232849
6-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.0677966    0.0224018   0.1131914
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0744045    0.0504081   0.0984008
6-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.1075385    0.0654231   0.1496538
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0155055    0.0127503   0.0182606
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0539083    0.0313109   0.0765057


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0567929   0.0526539   0.0609319
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
0-24 months   MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   PROBIT         BELARUS        NA                   NA                0.0070001   0.0038704   0.0101299
0-24 months   PROVIDE        BANGLADESH     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0171632   0.0143445   0.0199819
0-6 months    MAL-ED         INDIA          NA                   NA                0.0794979   0.0451303   0.1138656
0-6 months    PROBIT         BELARUS        NA                   NA                0.0813564   0.0559260   0.1067869
0-6 months    PROVIDE        BANGLADESH     NA                   NA                0.0219780   0.0105837   0.0333723
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0567929   0.0526539   0.0609319
6-24 months   MAL-ED         BANGLADESH     NA                   NA                0.0524194   0.0246252   0.0802135
6-24 months   MAL-ED         INDIA          NA                   NA                0.0875000   0.0516764   0.1233236
6-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   PROBIT         BELARUS        NA                   NA                0.0070001   0.0038704   0.0101299
6-24 months   PROVIDE        BANGLADESH     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0835322   0.0594080   0.1076564
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0171632   0.0143445   0.0199819


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.973259   1.0036615    3.879545
0-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.269734   1.1142219    1.446951
0-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
0-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
0-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.903263   1.6848822    5.002686
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
0-24 months   PROBIT         BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   PROBIT         BELARUS        Underweight          Normal weight     1.388573   0.3622102    5.323249
0-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
0-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     1.445323   0.9914735    2.106922
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     3.372976   2.1330075    5.333768
0-6 months    MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    MAL-ED         INDIA          Underweight          Normal weight     2.261905   0.9386674    5.450507
0-6 months    PROBIT         BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    PROBIT         BELARUS        Underweight          Normal weight     1.179582   0.8098260    1.718163
0-6 months    PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
0-6 months    PROVIDE        BANGLADESH     Underweight          Normal weight     3.298729   1.1656329    9.335368
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.938493   0.9881728    3.802732
6-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.269982   1.1135291    1.448418
6-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     4.218750   1.4674655   12.128293
6-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.948980   0.8304871    4.573848
6-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.854972   1.6296328    5.001657
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.398010   1.9869244    9.734890
6-24 months   PROBIT         BELARUS        Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   PROBIT         BELARUS        Underweight          Normal weight     1.388573   0.3622102    5.323249
6-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     5.055690   1.8686708   13.678173
6-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     1.445323   0.9914735    2.106922
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000    1.000000
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     3.476726   2.2053475    5.481052


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0141805   -0.0036617   0.0320227
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0053642    0.0024149   0.0083135
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0216841    0.0064464   0.0369218
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0001020   -0.0003837   0.0005878
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0091278   -0.0002050   0.0184605
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0016443    0.0005745   0.0027141
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0163400   -0.0053950   0.0380750
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0005869   -0.0006889   0.0018626
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0065638   -0.0011177   0.0142452
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0136131   -0.0040180   0.0312442
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0053636    0.0024033   0.0083240
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0153823   -0.0019384   0.0327030
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.0142016   -0.0075159   0.0359190
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0223696    0.0071358   0.0376034
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0084671    0.0009917   0.0159425
6-24 months   PROBIT         BELARUS        Normal weight        NA                0.0001020   -0.0003837   0.0005878
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0100275    0.0013074   0.0187476
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0091278   -0.0002050   0.0184605
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0016577    0.0005880   0.0027274


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1208648   -0.0366564   0.2544505
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0944514    0.0405136   0.1453572
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.2463684    0.0665674   0.3915355
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0145748   -0.0569888   0.0812932
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1092723   -0.0073879   0.2124227
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0958026    0.0333373   0.1542313
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.2055402   -0.1029502   0.4277471
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0072135   -0.0093143   0.0234706
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.2986513   -0.0982640   0.5521204
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1160289   -0.0399043   0.2485801
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0944420    0.0402507   0.1455735
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.2934473   -0.0722695   0.5344298
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.1623037   -0.1164315   0.3714481
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.2541564    0.0745089   0.3989323
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.2377306    0.0208001   0.4066026
6-24 months   PROBIT         BELARUS        Normal weight        NA                0.0145748   -0.0569888   0.0812932
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.4278416    0.0226926   0.6650335
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1092723   -0.0073879   0.2124227
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0965851    0.0341485   0.1549855
