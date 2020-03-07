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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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
0-24 months   JiVitA-3         BANGLADESH                     Normal weight              0    12433   26836
0-24 months   JiVitA-3         BANGLADESH                     Normal weight              1     4127   26836
0-24 months   JiVitA-3         BANGLADESH                     Underweight                0     7478   26836
0-24 months   JiVitA-3         BANGLADESH                     Underweight                1     2798   26836
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
0-24 months   SAS-CompFeed     INDIA                          Normal weight              0      646    1390
0-24 months   SAS-CompFeed     INDIA                          Normal weight              1      373    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight                0      173    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight                1      198    1390
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0     1764    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      543    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0       25    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1       13    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              0     7029    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              1     2252    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                0      347    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                1      169    9797
0-6 months    JiVitA-3         BANGLADESH                     Normal weight              0    13683   26739
0-6 months    JiVitA-3         BANGLADESH                     Normal weight              1     2817   26739
0-6 months    JiVitA-3         BANGLADESH                     Underweight                0     8344   26739
0-6 months    JiVitA-3         BANGLADESH                     Underweight                1     1895   26739
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
0-6 months    SAS-CompFeed     INDIA                          Normal weight              0      819    1383
0-6 months    SAS-CompFeed     INDIA                          Normal weight              1      195    1383
0-6 months    SAS-CompFeed     INDIA                          Underweight                0      266    1383
0-6 months    SAS-CompFeed     INDIA                          Underweight                1      103    1383
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
6-24 months   JiVitA-3         BANGLADESH                     Normal weight              0     8966   17246
6-24 months   JiVitA-3         BANGLADESH                     Normal weight              1     1661   17246
6-24 months   JiVitA-3         BANGLADESH                     Underweight                0     5456   17246
6-24 months   JiVitA-3         BANGLADESH                     Underweight                1     1163   17246
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
6-24 months   SAS-CompFeed     INDIA                          Normal weight              0      689    1277
6-24 months   SAS-CompFeed     INDIA                          Normal weight              1      248    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight                0      195    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight                1      145    1277
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/5a3b6bc1-f35e-4746-ab92-71faab6090b6/92c37f6f-5b2f-41fd-acb6-2ede2f61d092/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5a3b6bc1-f35e-4746-ab92-71faab6090b6/92c37f6f-5b2f-41fd-acb6-2ede2f61d092/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5a3b6bc1-f35e-4746-ab92-71faab6090b6/92c37f6f-5b2f-41fd-acb6-2ede2f61d092/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5a3b6bc1-f35e-4746-ab92-71faab6090b6/92c37f6f-5b2f-41fd-acb6-2ede2f61d092/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178010    0.1881221   0.2474800
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2881117    0.2261854   0.3500379
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.2488875    0.2412389   0.2565361
0-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.2726303    0.2631955   0.2820651
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0588588    0.0413128   0.0764048
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.1616966    0.1018737   0.2215194
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.3069290    0.2462239   0.3676341
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.4775695    0.2851193   0.6700197
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.4578397    0.3874160   0.5282634
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.6138412    0.4730525   0.7546300
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.4572876    0.4143561   0.5002191
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.5800691    0.4844891   0.6756492
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.3187909    0.2835936   0.3539882
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.4803598    0.3487077   0.6120119
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.2787784    0.2165305   0.3410263
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.3378020    0.2610348   0.4145692
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.3299192    0.2902964   0.3695420
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.4921550    0.4008519   0.5834582
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.3631256    0.3072146   0.4190367
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.5362040    0.4523152   0.6200928
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.2353762    0.2178861   0.2528663
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.3518346    0.2536381   0.4500312
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.2429380    0.2342053   0.2516706
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.3281594    0.2855414   0.3707773
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.1703054    0.1633914   0.1772194
0-6 months    JiVitA-3         BANGLADESH                     Underweight          NA                0.1856782    0.1775618   0.1937946
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.2034863    0.1504956   0.2564769
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.4708952    0.3013580   0.6404323
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.2993444    0.2345607   0.3641281
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.4400641    0.2941443   0.5859838
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.3427677    0.3018758   0.3836595
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.4401728    0.3434652   0.5368804
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.2551061    0.2222832   0.2879291
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                0.3268944    0.1966738   0.4571150
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.2729493    0.2104902   0.3354085
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.3291558    0.2495863   0.4087254
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.2373776    0.2015021   0.2732531
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.3907932    0.3025564   0.4790299
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.1910618    0.1494389   0.2326847
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.2880964    0.2171024   0.3590904
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1391417    0.1248886   0.1533949
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2105263    0.1264891   0.2945635
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.1800638    0.1722273   0.1879002
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.2347217    0.1962491   0.2731942
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.2178394    0.1882782   0.2474007
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.2950062    0.2305888   0.3594236
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.1560627    0.1487624   0.1633630
6-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.1759694    0.1662991   0.1856397
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0559637    0.0386698   0.0732576
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.1717243    0.1079321   0.2355166
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.1674641    0.1167366   0.2181917
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.2580645    0.1037094   0.4124197
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.2583224    0.1951937   0.3214510
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.3530682    0.2137255   0.4924109
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.2713770    0.2302493   0.3125047
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.3973538    0.2961556   0.4985520
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.1175904    0.0930471   0.1421336
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.2644501    0.1544174   0.3744828
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0089414    0.0044666   0.0134163
6-24 months   PROBIT           BELARUS                        Underweight          NA                0.0114723   -0.0012562   0.0242007
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.1426353    0.1122238   0.1730468
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.2420604    0.1587186   0.3254022
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.2636975    0.2139379   0.3134572
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.4227097    0.3456562   0.4997632
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.1606591    0.1441588   0.1771595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.2000000    0.1128772   0.2871228
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0950038    0.0886304   0.1013771
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.1664112    0.1316495   0.2011728


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580489   0.2515797   0.2645181
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2807401   0.2185990   0.3428812
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2471165   0.2385749   0.2556580
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1762220   0.1706009   0.1818431
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2749854   0.2126043   0.3373666
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1825820   0.1749172   0.1902467
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1637481   0.1576337   0.1698625
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0090379   0.0045686   0.0135072
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0986391   0.0923357   0.1049424


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.322820   1.0192460   1.716812
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     1.095396   1.0509026   1.141772
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     2.747195   1.7099645   4.413588
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.555961   0.9907706   2.443567
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.340734   1.0153150   1.770453
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.268500   1.0492966   1.533495
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.506818   1.1214223   2.024661
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.211722   1.0334112   1.420800
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.491744   1.1957326   1.861035
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.476635   1.2941174   1.684894
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.494776   1.1198269   1.995267
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.350795   1.1804930   1.545665
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     1.090266   1.0318871   1.151948
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     2.314137   1.4813227   3.615169
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     1.470093   0.9877867   2.187894
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.284172   1.0007881   1.647800
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     1.281405   0.8427622   1.948355
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.205923   1.0187899   1.427428
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     1.646293   1.2544277   2.160573
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.507870   1.2776398   1.779588
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.513035   1.0020087   2.284685
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.303547   1.1001846   1.544500
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.354237   1.0407680   1.762120
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     1.127556   1.0532019   1.207159
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     3.068493   1.8943048   4.970505
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     1.541014   0.7881894   3.012884
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.366774   0.8583700   2.176299
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     1.464213   1.0885851   1.969456
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     2.248910   1.4117280   3.582556
6-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.283048   0.4377605   3.760530
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.697058   1.1332129   2.541453
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.603010   1.3019817   1.973638
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.244872   0.7957064   1.947585
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     1.751627   1.4065942   2.181295


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0100510   -0.0001108   0.0202128
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.0091614    0.0050080   0.0133148
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0199943    0.0085953   0.0313932
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0277167    0.0023430   0.0530903
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0256314   -0.0072028   0.0584656
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0202765    0.0024630   0.0380901
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0110105   -0.0009684   0.0229893
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0019617   -0.0001170   0.0040404
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0303200    0.0113076   0.0493323
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.0476657    0.0308812   0.0644503
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0017240   -0.0008056   0.0042535
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0041785    0.0019556   0.0064014
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.0059166    0.0021606   0.0096726
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.0248602    0.0008025   0.0489179
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.0271019   -0.0050665   0.0592702
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.0141455   -0.0031277   0.0314188
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0018475   -0.0087201   0.0124151
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0020361   -0.0000835   0.0041557
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.0257016    0.0075816   0.0438217
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.0244118    0.0133678   0.0354558
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0011568   -0.0010052   0.0033187
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0025182    0.0005389   0.0044974
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0100126   -0.0001047   0.0201299
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.0076854    0.0032812   0.0120896
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.0205855    0.0089575   0.0322135
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0117026   -0.0096347   0.0330398
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0151819   -0.0155319   0.0458957
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0219809    0.0030166   0.0409453
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0139165    0.0033829   0.0244500
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0000965   -0.0003675   0.0005605
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0186025    0.0030433   0.0341617
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.0440550    0.0243570   0.0637531
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0005985   -0.0016285   0.0028255
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0036353    0.0017579   0.0055127


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0441119   -0.0023487   0.0884190
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.0355025    0.0192572   0.0514787
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.2535635    0.1066145   0.3763416
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0828239    0.0040946   0.1553294
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0530154   -0.0175930   0.1187244
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0424583    0.0042849   0.0791681
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0333851   -0.0036573   0.0690604
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0069876   -0.0006582   0.0145751
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.0841662    0.0298732   0.1354206
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.1160340    0.0768798   0.1535274
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0072711   -0.0034870   0.0179139
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0169090    0.0078787   0.0258570
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.0335747    0.0119419   0.0547339
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.1088705   -0.0012274   0.2068618
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.0830209   -0.0207819   0.1762681
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.0396330   -0.0100380   0.0868612
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                0.0071900   -0.0348002   0.0474763
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.0074043   -0.0005488   0.0152943
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.0976954    0.0266458   0.1635588
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.1132936    0.0683724   0.1560488
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0082450   -0.0073186   0.0235682
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0137921    0.0029005   0.0245647
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0439435   -0.0022518   0.0880096
6-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.0469343    0.0197129   0.0733998
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.2689183    0.1150010   0.3960666
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.0653166   -0.0608054   0.1764436
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.0555089   -0.0635425   0.1612338
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.0749287    0.0081864   0.1371798
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.1058233    0.0240000   0.1807869
6-24 months   PROBIT           BELARUS                        Normal weight        NA                0.0106745   -0.0420841   0.0607620
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.1153731    0.0151440   0.2054018
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.1431508    0.0758637   0.2055386
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.0037114   -0.0102192   0.0174499
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0368544    0.0177514   0.0555860
