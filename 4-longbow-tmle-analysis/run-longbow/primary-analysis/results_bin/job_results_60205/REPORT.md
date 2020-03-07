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

* arm
* W_mage
* meducyrs
* feducyrs
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               0     8183   27105
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               1     8539   27105
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     5491   27105
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 1     4892   27105
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
0-24 months   SAS-CompFeed     INDIA                          Normal weight               0      353    1407
0-24 months   SAS-CompFeed     INDIA                          Normal weight               1      675    1407
0-24 months   SAS-CompFeed     INDIA                          Underweight                 0       88    1407
0-24 months   SAS-CompFeed     INDIA                          Underweight                 1      291    1407
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     5091    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1     4211    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      222    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1      295    9819
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               0     9578   27039
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               1     7109   27039
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 0     6293   27039
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 1     4059   27039
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
0-6 months    SAS-CompFeed     INDIA                          Normal weight               0      618    1404
0-6 months    SAS-CompFeed     INDIA                          Normal weight               1      407    1404
0-6 months    SAS-CompFeed     INDIA                          Underweight                 0      187    1404
0-6 months    SAS-CompFeed     INDIA                          Underweight                 1      192    1404
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
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               0     4822   10460
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               1     1430   10460
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     3375   10460
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 1      833   10460
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
6-24 months   SAS-CompFeed     INDIA                          Normal weight               0      304     743
6-24 months   SAS-CompFeed     INDIA                          Normal weight               1      268     743
6-24 months   SAS-CompFeed     INDIA                          Underweight                 0       72     743
6-24 months   SAS-CompFeed     INDIA                          Underweight                 1       99     743
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




# Results Detail

## Results Plots
![](/tmp/183d3810-5431-462c-92f1-2f4ddc59e63c/170f3165-700e-45a1-b12c-b99809c6b033/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/183d3810-5431-462c-92f1-2f4ddc59e63c/170f3165-700e-45a1-b12c-b99809c6b033/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/183d3810-5431-462c-92f1-2f4ddc59e63c/170f3165-700e-45a1-b12c-b99809c6b033/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/183d3810-5431-462c-92f1-2f4ddc59e63c/170f3165-700e-45a1-b12c-b99809c6b033/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3476673   0.2948127   0.4005218
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4139155   0.3111445   0.5166865
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.5090400   0.4996740   0.5184059
0-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.4740440   0.4632463   0.4848417
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.6247437   0.5886318   0.6608557
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.6853020   0.6092611   0.7613429
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.5990991   0.5345045   0.6636937
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.7187500   0.5626637   0.8748363
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.6170372   0.5481815   0.6858929
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.6149105   0.4761186   0.7537025
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.6361926   0.5949220   0.6774631
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.7919689   0.7156882   0.8682495
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.4699711   0.4325253   0.5074170
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.6367876   0.5180717   0.7555035
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.1271435   0.1106336   0.1436533
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.1569599   0.1180853   0.1958345
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.4386406   0.3969207   0.4803605
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.5321961   0.4409986   0.6233936
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.6595331   0.6100315   0.7090348
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.7603583   0.7268671   0.7938495
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.3450119   0.3254155   0.3646083
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3818237   0.2849385   0.4787088
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.4530048   0.4428816   0.4631279
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5671191   0.5227471   0.6114912
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.4242356   0.4152417   0.4332294
0-6 months    JiVitA-3         BANGLADESH                     Underweight          NA                0.3951408   0.3848823   0.4053993
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                0.3608283   0.2976510   0.4240056
0-6 months    LCNI-5           MALAWI                         Underweight          NA                0.3372323   0.1975479   0.4769166
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.3394596   0.2771667   0.4017525
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.3989193   0.2190948   0.5787438
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.3370586   0.2701751   0.4039422
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.3976354   0.2589008   0.5363701
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.4132231   0.3510620   0.4753843
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.3266985   0.2865086   0.3668885
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.4597512   0.3649646   0.5545377
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2968276   0.2623485   0.3313066
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                0.3827382   0.2485924   0.5168841
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0642919   0.0535590   0.0750249
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.0963918   0.0637340   0.1290497
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.2371412   0.2012668   0.2730155
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.3018432   0.2197680   0.3839184
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.3994343   0.3612456   0.4376230
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.5008667   0.4505542   0.5511793
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1920243   0.1758027   0.2082459
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2368421   0.1492053   0.3244789
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2822016   0.2730437   0.2913596
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3710868   0.3274854   0.4146882
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.3476462   0.2947407   0.4005518
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.4214063   0.3209199   0.5218927
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.2289882   0.2166628   0.2413135
6-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.1977353   0.1844697   0.2110009
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.5813321   0.5418934   0.6207708
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.6853677   0.6021380   0.7685974
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.4113475   0.3298675   0.4928275
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.5294118   0.2913884   0.7674352
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.4401180   0.3522845   0.5279515
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.4472639   0.2697375   0.6247903
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.5516648   0.4948709   0.6084586
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.7370110   0.6036396   0.8703824
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2566204   0.2168007   0.2964401
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.4180733   0.2534234   0.5827231
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0671642   0.0544711   0.0798573
6-24 months   PROBIT           BELARUS                        Underweight          NA                0.0717508   0.0463785   0.0971232
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.2838779   0.2386370   0.3291188
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.3838476   0.2725199   0.4951752
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.4706689   0.4158704   0.5254673
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.5706759   0.5297057   0.6116462
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2283312   0.2071921   0.2494702
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2083333   0.1089524   0.3077142
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2578979   0.2469733   0.2688225
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3459695   0.2895603   0.4023786


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4955174   0.4876719   0.5033630
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1284965   0.1123633   0.1446297
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454158   0.3261661   0.3646654
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4589062   0.4490494   0.4687630
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130330   0.4055721   0.4204940
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0656323   0.0549927   0.0762719
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1927505   0.1767818   0.2087193
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2869086   0.2779566   0.2958607
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2163480   0.2069669   0.2257290
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0673219   0.0549549   0.0796890
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2280255   0.2072654   0.2487856
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2615147   0.2508057   0.2722237


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.1905508   0.9130938   1.5523171
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9312510   0.9075864   0.9555327
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.0969330   0.9678188   1.2432718
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.1997180   0.9414164   1.5288914
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     0.9965535   0.7745565   1.2821773
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.2448571   1.1080963   1.3984969
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.3549506   1.1060676   1.6598363
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.2345102   0.9610384   1.5858009
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.2132851   0.9972446   1.4761280
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.1528735   1.0840940   1.2260168
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.1066972   0.8532832   1.4353719
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.2519054   1.1541129   1.3579843
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9314184   0.9041519   0.9595072
0-6 months    LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         Underweight          Normal weight     0.9346058   0.5961796   1.4651426
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     1.1751599   0.7223001   1.9119485
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     1.1797218   0.7893855   1.7630720
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.3828571   0.8567351   2.2320714
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.4072643   1.1080259   1.7873163
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.2894295   0.8909590   1.8661112
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.4992835   1.0779183   2.0853629
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     1.2728421   0.9327954   1.7368513
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.2539404   1.1150473   1.4101343
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.2333967   0.8438583   1.8027521
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3149704   1.1640749   1.4854260
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.2121698   0.9370456   1.5680728
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.8635177   0.7947446   0.9382421
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.1789607   1.0258358   1.3549424
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.2870183   0.7874368   2.1035542
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.0162363   0.6506032   1.5873520
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.3359762   1.0845374   1.6457084
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.6291506   1.0669547   2.4875768
6-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.0682898   0.7291632   1.5651410
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.3521574   0.9738285   1.8774656
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.2124786   1.0519652   1.3974839
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9124174   0.5612510   1.4833032
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.3414978   1.1335893   1.5875382


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0089870   -0.0056165    0.0235904
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0135225   -0.0183115   -0.0087335
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0108596   -0.0038764    0.0255956
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0150741   -0.0067628    0.0369110
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0013347   -0.0324305    0.0297611
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0283543    0.0128840    0.0438247
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0094991   -0.0020299    0.0210281
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0013531   -0.0001349    0.0028410
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0142742   -0.0043757    0.0329241
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0270340    0.0166013    0.0374668
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0004039   -0.0021424    0.0029501
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0059014    0.0035354    0.0082675
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0112025   -0.0158093   -0.0065958
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0028947   -0.0287191    0.0229296
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                 0.0109341   -0.0126513    0.0345195
0-6 months    MAL-ED           INDIA                          Normal weight        NA                 0.0100488   -0.0208919    0.0409895
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0086519   -0.0066061    0.0239098
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0230630    0.0055586    0.0405674
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0064837   -0.0050156    0.0179829
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0013404    0.0001666    0.0025141
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                 0.0109904   -0.0057808    0.0277616
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0272039    0.0127724    0.0416355
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0007263   -0.0015136    0.0029661
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0047070    0.0024122    0.0070019
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0090080   -0.0056771    0.0236931
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0126402   -0.0196610   -0.0056193
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0170173    0.0011555    0.0328790
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0127031   -0.0149643    0.0403705
6-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0180401   -0.0569673    0.0208871
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0222483    0.0015760    0.0429206
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0062255   -0.0060995    0.0185504
6-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0001577   -0.0008324    0.0011479
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0165607   -0.0023371    0.0354585
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0232746    0.0084988    0.0380504
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0003057   -0.0028487    0.0022373
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0036168    0.0010393    0.0061942


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0251980   -0.0170609    0.0657011
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0272897   -0.0369910   -0.0176792
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0170855   -0.0064124    0.0400348
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0245438   -0.0118432    0.0596222
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0021678   -0.0539669    0.0470856
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0426671    0.0187675    0.0659846
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0198116   -0.0045730    0.0436044
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0105299   -0.0014701    0.0223861
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0315163   -0.0105738    0.0718534
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0393756    0.0225962    0.0558670
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0011693   -0.0062345    0.0085186
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0128597    0.0076846    0.0180078
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0271226   -0.0383190   -0.0160470
0-6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0080874   -0.0828671    0.0615283
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                 0.0312052   -0.0384508    0.0961888
0-6 months    MAL-ED           INDIA                          Normal weight        NA                 0.0289501   -0.0644203    0.1141301
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0205081   -0.0163884    0.0560652
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0659392    0.0144743    0.1147166
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0213764   -0.0172895    0.0585726
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0204221    0.0019828    0.0385208
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                 0.0442926   -0.0256324    0.1094503
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0637634    0.0284558    0.0977879
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0037679   -0.0079388    0.0153386
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0164060    0.0083776    0.0243693
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0252569   -0.0172473    0.0659852
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0584252   -0.0911911   -0.0266431
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0284403    0.0014612    0.0546905
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                 0.0299566   -0.0376377    0.0931477
6-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0427411   -0.1394354    0.0457475
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0387660    0.0017697    0.0743910
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0236848   -0.0243297    0.0694487
6-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0023429   -0.0126079    0.0170729
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0551218   -0.0099871    0.1160334
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0471200    0.0137729    0.0793395
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0013406   -0.0125449    0.0097397
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0138301    0.0039290    0.0236329
