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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid          country                        exclfeed36    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        3       3  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       3  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       3  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       3  stunted          
Birth       EE               PAKISTAN                       1                   0        2       7  stunted          
Birth       EE               PAKISTAN                       1                   1        1       7  stunted          
Birth       EE               PAKISTAN                       0                   0        3       7  stunted          
Birth       EE               PAKISTAN                       0                   1        1       7  stunted          
Birth       GMS-Nepal        NEPAL                          1                   0      356     526  stunted          
Birth       GMS-Nepal        NEPAL                          1                   1       66     526  stunted          
Birth       GMS-Nepal        NEPAL                          0                   0       85     526  stunted          
Birth       GMS-Nepal        NEPAL                          0                   1       19     526  stunted          
Birth       IRC              INDIA                          1                   0        0       4  stunted          
Birth       IRC              INDIA                          1                   1        0       4  stunted          
Birth       IRC              INDIA                          0                   0        3       4  stunted          
Birth       IRC              INDIA                          0                   1        1       4  stunted          
Birth       JiVitA-3         BANGLADESH                     1                   0     5638   10681  stunted          
Birth       JiVitA-3         BANGLADESH                     1                   1     2684   10681  stunted          
Birth       JiVitA-3         BANGLADESH                     0                   0     1588   10681  stunted          
Birth       JiVitA-3         BANGLADESH                     0                   1      771   10681  stunted          
Birth       JiVitA-4         BANGLADESH                     1                   0     1406    2517  stunted          
Birth       JiVitA-4         BANGLADESH                     1                   1      588    2517  stunted          
Birth       JiVitA-4         BANGLADESH                     0                   0      350    2517  stunted          
Birth       JiVitA-4         BANGLADESH                     0                   1      173    2517  stunted          
Birth       Keneba           GAMBIA                         1                   0      347    1253  stunted          
Birth       Keneba           GAMBIA                         1                   1       16    1253  stunted          
Birth       Keneba           GAMBIA                         0                   0      839    1253  stunted          
Birth       Keneba           GAMBIA                         0                   1       51    1253  stunted          
Birth       MAL-ED           BANGLADESH                     1                   0       28     221  stunted          
Birth       MAL-ED           BANGLADESH                     1                   1        4     221  stunted          
Birth       MAL-ED           BANGLADESH                     0                   0      153     221  stunted          
Birth       MAL-ED           BANGLADESH                     0                   1       36     221  stunted          
Birth       MAL-ED           BRAZIL                         1                   0        3      65  stunted          
Birth       MAL-ED           BRAZIL                         1                   1        2      65  stunted          
Birth       MAL-ED           BRAZIL                         0                   0       53      65  stunted          
Birth       MAL-ED           BRAZIL                         0                   1        7      65  stunted          
Birth       MAL-ED           INDIA                          1                   0        0      42  stunted          
Birth       MAL-ED           INDIA                          1                   1        1      42  stunted          
Birth       MAL-ED           INDIA                          0                   0       33      42  stunted          
Birth       MAL-ED           INDIA                          0                   1        8      42  stunted          
Birth       MAL-ED           NEPAL                          1                   0        0      26  stunted          
Birth       MAL-ED           NEPAL                          1                   1        0      26  stunted          
Birth       MAL-ED           NEPAL                          0                   0       24      26  stunted          
Birth       MAL-ED           NEPAL                          0                   1        2      26  stunted          
Birth       MAL-ED           PERU                           1                   0        5     223  stunted          
Birth       MAL-ED           PERU                           1                   1        0     223  stunted          
Birth       MAL-ED           PERU                           0                   0      192     223  stunted          
Birth       MAL-ED           PERU                           0                   1       26     223  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                   0        1     105  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0     105  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                   0       95     105  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                   1        9     105  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       98     119  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       21     119  stunted          
Birth       PROVIDE          BANGLADESH                     1                   0      111     490  stunted          
Birth       PROVIDE          BANGLADESH                     1                   1        8     490  stunted          
Birth       PROVIDE          BANGLADESH                     0                   0      335     490  stunted          
Birth       PROVIDE          BANGLADESH                     0                   1       36     490  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                   0        5       9  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                   1        4       9  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0       9  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0       9  stunted          
6 months    EE               PAKISTAN                       1                   0        3       9  stunted          
6 months    EE               PAKISTAN                       1                   1        1       9  stunted          
6 months    EE               PAKISTAN                       0                   0        4       9  stunted          
6 months    EE               PAKISTAN                       0                   1        1       9  stunted          
6 months    GMS-Nepal        NEPAL                          1                   0      339     527  stunted          
6 months    GMS-Nepal        NEPAL                          1                   1       83     527  stunted          
6 months    GMS-Nepal        NEPAL                          0                   0       76     527  stunted          
6 months    GMS-Nepal        NEPAL                          0                   1       29     527  stunted          
6 months    IRC              INDIA                          1                   0        0       4  stunted          
6 months    IRC              INDIA                          1                   1        0       4  stunted          
6 months    IRC              INDIA                          0                   0        3       4  stunted          
6 months    IRC              INDIA                          0                   1        1       4  stunted          
6 months    JiVitA-3         BANGLADESH                     1                   0     4971    8552  stunted          
6 months    JiVitA-3         BANGLADESH                     1                   1     1607    8552  stunted          
6 months    JiVitA-3         BANGLADESH                     0                   0     1467    8552  stunted          
6 months    JiVitA-3         BANGLADESH                     0                   1      507    8552  stunted          
6 months    JiVitA-4         BANGLADESH                     1                   0     2471    4185  stunted          
6 months    JiVitA-4         BANGLADESH                     1                   1      770    4185  stunted          
6 months    JiVitA-4         BANGLADESH                     0                   0      657    4185  stunted          
6 months    JiVitA-4         BANGLADESH                     0                   1      287    4185  stunted          
6 months    Keneba           GAMBIA                         1                   0      435    1790  stunted          
6 months    Keneba           GAMBIA                         1                   1       72    1790  stunted          
6 months    Keneba           GAMBIA                         0                   0     1091    1790  stunted          
6 months    Keneba           GAMBIA                         0                   1      192    1790  stunted          
6 months    LCNI-5           MALAWI                         1                   0       30     272  stunted          
6 months    LCNI-5           MALAWI                         1                   1       17     272  stunted          
6 months    LCNI-5           MALAWI                         0                   0      145     272  stunted          
6 months    LCNI-5           MALAWI                         0                   1       80     272  stunted          
6 months    MAL-ED           BANGLADESH                     1                   0       24     240  stunted          
6 months    MAL-ED           BANGLADESH                     1                   1        6     240  stunted          
6 months    MAL-ED           BANGLADESH                     0                   0      172     240  stunted          
6 months    MAL-ED           BANGLADESH                     0                   1       38     240  stunted          
6 months    MAL-ED           BRAZIL                         1                   0       12     209  stunted          
6 months    MAL-ED           BRAZIL                         1                   1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         0                   0      191     209  stunted          
6 months    MAL-ED           BRAZIL                         0                   1        6     209  stunted          
6 months    MAL-ED           INDIA                          1                   0        8     233  stunted          
6 months    MAL-ED           INDIA                          1                   1        1     233  stunted          
6 months    MAL-ED           INDIA                          0                   0      181     233  stunted          
6 months    MAL-ED           INDIA                          0                   1       43     233  stunted          
6 months    MAL-ED           NEPAL                          1                   0        4     235  stunted          
6 months    MAL-ED           NEPAL                          1                   1        0     235  stunted          
6 months    MAL-ED           NEPAL                          0                   0      219     235  stunted          
6 months    MAL-ED           NEPAL                          0                   1       12     235  stunted          
6 months    MAL-ED           PERU                           1                   0        4     272  stunted          
6 months    MAL-ED           PERU                           1                   1        2     272  stunted          
6 months    MAL-ED           PERU                           0                   0      208     272  stunted          
6 months    MAL-ED           PERU                           0                   1       58     272  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                   0        1     250  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     250  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                   0      201     250  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                   1       48     250  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        3     243  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        1     243  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      181     243  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       58     243  stunted          
6 months    PROVIDE          BANGLADESH                     1                   0      126     603  stunted          
6 months    PROVIDE          BANGLADESH                     1                   1       19     603  stunted          
6 months    PROVIDE          BANGLADESH                     0                   0      382     603  stunted          
6 months    PROVIDE          BANGLADESH                     0                   1       76     603  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                   0        0     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                   1        0     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                   0       87     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                   1       81     168  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                   0        4       9  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                   1        5       9  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0       9  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0       9  stunted          
24 months   EE               PAKISTAN                       1                   0        0       3  stunted          
24 months   EE               PAKISTAN                       1                   1        0       3  stunted          
24 months   EE               PAKISTAN                       0                   0        2       3  stunted          
24 months   EE               PAKISTAN                       0                   1        1       3  stunted          
24 months   GMS-Nepal        NEPAL                          1                   0      208     446  stunted          
24 months   GMS-Nepal        NEPAL                          1                   1      155     446  stunted          
24 months   GMS-Nepal        NEPAL                          0                   0       40     446  stunted          
24 months   GMS-Nepal        NEPAL                          0                   1       43     446  stunted          
24 months   IRC              INDIA                          1                   0        0       4  stunted          
24 months   IRC              INDIA                          1                   1        0       4  stunted          
24 months   IRC              INDIA                          0                   0        1       4  stunted          
24 months   IRC              INDIA                          0                   1        3       4  stunted          
24 months   JiVitA-3         BANGLADESH                     1                   0     1703    4334  stunted          
24 months   JiVitA-3         BANGLADESH                     1                   1     1622    4334  stunted          
24 months   JiVitA-3         BANGLADESH                     0                   0      509    4334  stunted          
24 months   JiVitA-3         BANGLADESH                     0                   1      500    4334  stunted          
24 months   JiVitA-4         BANGLADESH                     1                   0     1900    4049  stunted          
24 months   JiVitA-4         BANGLADESH                     1                   1     1245    4049  stunted          
24 months   JiVitA-4         BANGLADESH                     0                   0      508    4049  stunted          
24 months   JiVitA-4         BANGLADESH                     0                   1      396    4049  stunted          
24 months   Keneba           GAMBIA                         1                   0      297    1394  stunted          
24 months   Keneba           GAMBIA                         1                   1      127    1394  stunted          
24 months   Keneba           GAMBIA                         0                   0      620    1394  stunted          
24 months   Keneba           GAMBIA                         0                   1      350    1394  stunted          
24 months   LCNI-5           MALAWI                         1                   0       17     189  stunted          
24 months   LCNI-5           MALAWI                         1                   1       17     189  stunted          
24 months   LCNI-5           MALAWI                         0                   0       80     189  stunted          
24 months   LCNI-5           MALAWI                         0                   1       75     189  stunted          
24 months   MAL-ED           BANGLADESH                     1                   0       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     1                   1       13     212  stunted          
24 months   MAL-ED           BANGLADESH                     0                   0       99     212  stunted          
24 months   MAL-ED           BANGLADESH                     0                   1       88     212  stunted          
24 months   MAL-ED           BRAZIL                         1                   0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         1                   1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         0                   0      151     169  stunted          
24 months   MAL-ED           BRAZIL                         0                   1        7     169  stunted          
24 months   MAL-ED           INDIA                          1                   0        4     224  stunted          
24 months   MAL-ED           INDIA                          1                   1        5     224  stunted          
24 months   MAL-ED           INDIA                          0                   0      124     224  stunted          
24 months   MAL-ED           INDIA                          0                   1       91     224  stunted          
24 months   MAL-ED           NEPAL                          1                   0        4     227  stunted          
24 months   MAL-ED           NEPAL                          1                   1        0     227  stunted          
24 months   MAL-ED           NEPAL                          0                   0      173     227  stunted          
24 months   MAL-ED           NEPAL                          0                   1       50     227  stunted          
24 months   MAL-ED           PERU                           1                   0        2     201  stunted          
24 months   MAL-ED           PERU                           1                   1        2     201  stunted          
24 months   MAL-ED           PERU                           0                   0      125     201  stunted          
24 months   MAL-ED           PERU                           0                   1       72     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                   0        1     235  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     235  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                   0      152     235  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                   1       82     235  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     213  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     213  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       58     213  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1      152     213  stunted          
24 months   PROVIDE          BANGLADESH                     1                   0       91     577  stunted          
24 months   PROVIDE          BANGLADESH                     1                   1       50     577  stunted          
24 months   PROVIDE          BANGLADESH                     0                   0      296     577  stunted          
24 months   PROVIDE          BANGLADESH                     0                   1      140     577  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
