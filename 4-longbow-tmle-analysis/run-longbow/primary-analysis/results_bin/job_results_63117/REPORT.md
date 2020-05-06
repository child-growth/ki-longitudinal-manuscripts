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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        pers_wast    stunted   n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  --------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                  0       68     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  1       12     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  0        7     92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  1        5     92  stunted          
Birth       CMIN             BANGLADESH                     0                  0       14     18  stunted          
Birth       CMIN             BANGLADESH                     0                  1        2     18  stunted          
Birth       CMIN             BANGLADESH                     1                  0        1     18  stunted          
Birth       CMIN             BANGLADESH                     1                  1        1     18  stunted          
Birth       CONTENT          PERU                           0                  0        2      2  stunted          
Birth       CONTENT          PERU                           0                  1        0      2  stunted          
Birth       CONTENT          PERU                           1                  0        0      2  stunted          
Birth       CONTENT          PERU                           1                  1        0      2  stunted          
Birth       EE               PAKISTAN                       0                  0      130    240  stunted          
Birth       EE               PAKISTAN                       0                  1       94    240  stunted          
Birth       EE               PAKISTAN                       1                  0       10    240  stunted          
Birth       EE               PAKISTAN                       1                  1        6    240  stunted          
Birth       GMS-Nepal        NEPAL                          0                  0      435    585  stunted          
Birth       GMS-Nepal        NEPAL                          0                  1       86    585  stunted          
Birth       GMS-Nepal        NEPAL                          1                  0       55    585  stunted          
Birth       GMS-Nepal        NEPAL                          1                  1        9    585  stunted          
Birth       IRC              INDIA                          0                  0      279    387  stunted          
Birth       IRC              INDIA                          0                  1       40    387  stunted          
Birth       IRC              INDIA                          1                  0       63    387  stunted          
Birth       IRC              INDIA                          1                  1        5    387  stunted          
Birth       Keneba           GAMBIA                         0                  0     1303   1419  stunted          
Birth       Keneba           GAMBIA                         0                  1       71   1419  stunted          
Birth       Keneba           GAMBIA                         1                  0       43   1419  stunted          
Birth       Keneba           GAMBIA                         1                  1        2   1419  stunted          
Birth       MAL-ED           BANGLADESH                     0                  0      180    229  stunted          
Birth       MAL-ED           BANGLADESH                     0                  1       40    229  stunted          
Birth       MAL-ED           BANGLADESH                     1                  0        7    229  stunted          
Birth       MAL-ED           BANGLADESH                     1                  1        2    229  stunted          
Birth       MAL-ED           BRAZIL                         0                  0       56     65  stunted          
Birth       MAL-ED           BRAZIL                         0                  1        9     65  stunted          
Birth       MAL-ED           BRAZIL                         1                  0        0     65  stunted          
Birth       MAL-ED           BRAZIL                         1                  1        0     65  stunted          
Birth       MAL-ED           INDIA                          0                  0       33     45  stunted          
Birth       MAL-ED           INDIA                          0                  1       10     45  stunted          
Birth       MAL-ED           INDIA                          1                  0        2     45  stunted          
Birth       MAL-ED           INDIA                          1                  1        0     45  stunted          
Birth       MAL-ED           NEPAL                          0                  0       24     27  stunted          
Birth       MAL-ED           NEPAL                          0                  1        2     27  stunted          
Birth       MAL-ED           NEPAL                          1                  0        1     27  stunted          
Birth       MAL-ED           NEPAL                          1                  1        0     27  stunted          
Birth       MAL-ED           PERU                           0                  0      207    233  stunted          
Birth       MAL-ED           PERU                           0                  1       26    233  stunted          
Birth       MAL-ED           PERU                           1                  0        0    233  stunted          
Birth       MAL-ED           PERU                           1                  1        0    233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  0      102    113  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  1        9    113  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  0        2    113  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0    113  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      101    123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       22    123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    123  stunted          
Birth       PROVIDE          BANGLADESH                     0                  0      470    539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  1       46    539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  0       21    539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  1        2    539  stunted          
Birth       ResPak           PAKISTAN                       0                  0       21     34  stunted          
Birth       ResPak           PAKISTAN                       0                  1        9     34  stunted          
Birth       ResPak           PAKISTAN                       1                  0        2     34  stunted          
Birth       ResPak           PAKISTAN                       1                  1        2     34  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  0      219    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  1       94    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  0       35    365  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  1       17    365  stunted          
6 months    CMIN             BANGLADESH                     0                  0      146    243  stunted          
6 months    CMIN             BANGLADESH                     0                  1       86    243  stunted          
6 months    CMIN             BANGLADESH                     1                  0        4    243  stunted          
6 months    CMIN             BANGLADESH                     1                  1        7    243  stunted          
6 months    CONTENT          PERU                           0                  0      206    215  stunted          
6 months    CONTENT          PERU                           0                  1        9    215  stunted          
6 months    CONTENT          PERU                           1                  0        0    215  stunted          
6 months    CONTENT          PERU                           1                  1        0    215  stunted          
6 months    EE               PAKISTAN                       0                  0      181    373  stunted          
6 months    EE               PAKISTAN                       0                  1      166    373  stunted          
6 months    EE               PAKISTAN                       1                  0        9    373  stunted          
6 months    EE               PAKISTAN                       1                  1       17    373  stunted          
6 months    GMS-Nepal        NEPAL                          0                  0      392    559  stunted          
6 months    GMS-Nepal        NEPAL                          0                  1      107    559  stunted          
6 months    GMS-Nepal        NEPAL                          1                  0       46    559  stunted          
6 months    GMS-Nepal        NEPAL                          1                  1       14    559  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                  0      189    276  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                  1       78    276  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                  0        2    276  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                  1        7    276  stunted          
6 months    IRC              INDIA                          0                  0      246    406  stunted          
6 months    IRC              INDIA                          0                  1       91    406  stunted          
6 months    IRC              INDIA                          1                  0       60    406  stunted          
6 months    IRC              INDIA                          1                  1        9    406  stunted          
6 months    Keneba           GAMBIA                         0                  0     1583   1897  stunted          
6 months    Keneba           GAMBIA                         0                  1      253   1897  stunted          
6 months    Keneba           GAMBIA                         1                  0       38   1897  stunted          
6 months    Keneba           GAMBIA                         1                  1       23   1897  stunted          
6 months    MAL-ED           BANGLADESH                     0                  0      191    241  stunted          
6 months    MAL-ED           BANGLADESH                     0                  1       43    241  stunted          
6 months    MAL-ED           BANGLADESH                     1                  0        6    241  stunted          
6 months    MAL-ED           BANGLADESH                     1                  1        1    241  stunted          
6 months    MAL-ED           BRAZIL                         0                  0      202    209  stunted          
6 months    MAL-ED           BRAZIL                         0                  1        6    209  stunted          
6 months    MAL-ED           BRAZIL                         1                  0        1    209  stunted          
6 months    MAL-ED           BRAZIL                         1                  1        0    209  stunted          
6 months    MAL-ED           INDIA                          0                  0      177    236  stunted          
6 months    MAL-ED           INDIA                          0                  1       41    236  stunted          
6 months    MAL-ED           INDIA                          1                  0       14    236  stunted          
6 months    MAL-ED           INDIA                          1                  1        4    236  stunted          
6 months    MAL-ED           NEPAL                          0                  0      219    236  stunted          
6 months    MAL-ED           NEPAL                          0                  1       11    236  stunted          
6 months    MAL-ED           NEPAL                          1                  0        5    236  stunted          
6 months    MAL-ED           NEPAL                          1                  1        1    236  stunted          
6 months    MAL-ED           PERU                           0                  0      213    273  stunted          
6 months    MAL-ED           PERU                           0                  1       60    273  stunted          
6 months    MAL-ED           PERU                           1                  0        0    273  stunted          
6 months    MAL-ED           PERU                           1                  1        0    273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  0      202    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  1       50    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  0        2    254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0    254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      188    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       59    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    247  stunted          
6 months    PROVIDE          BANGLADESH                     0                  0      499    604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  1       91    604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  0        9    604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  1        5    604  stunted          
6 months    ResPak           PAKISTAN                       0                  0      125    227  stunted          
6 months    ResPak           PAKISTAN                       0                  1       77    227  stunted          
6 months    ResPak           PAKISTAN                       1                  0       22    227  stunted          
6 months    ResPak           PAKISTAN                       1                  1        3    227  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1776   2019  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      192   2019  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       47   2019  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2019  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  0       92    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  1      219    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  0       12    366  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  1       43    366  stunted          
24 months   CMIN             BANGLADESH                     0                  0       75    242  stunted          
24 months   CMIN             BANGLADESH                     0                  1      158    242  stunted          
24 months   CMIN             BANGLADESH                     1                  0        2    242  stunted          
24 months   CMIN             BANGLADESH                     1                  1        7    242  stunted          
24 months   CONTENT          PERU                           0                  0      151    164  stunted          
24 months   CONTENT          PERU                           0                  1       13    164  stunted          
24 months   CONTENT          PERU                           1                  0        0    164  stunted          
24 months   CONTENT          PERU                           1                  1        0    164  stunted          
24 months   EE               PAKISTAN                       0                  0       49    167  stunted          
24 months   EE               PAKISTAN                       0                  1      107    167  stunted          
24 months   EE               PAKISTAN                       1                  0        0    167  stunted          
24 months   EE               PAKISTAN                       1                  1       11    167  stunted          
24 months   GMS-Nepal        NEPAL                          0                  0      238    479  stunted          
24 months   GMS-Nepal        NEPAL                          0                  1      192    479  stunted          
24 months   GMS-Nepal        NEPAL                          1                  0       25    479  stunted          
24 months   GMS-Nepal        NEPAL                          1                  1       24    479  stunted          
24 months   IRC              INDIA                          0                  0      190    408  stunted          
24 months   IRC              INDIA                          0                  1      149    408  stunted          
24 months   IRC              INDIA                          1                  0       46    408  stunted          
24 months   IRC              INDIA                          1                  1       23    408  stunted          
24 months   Keneba           GAMBIA                         0                  0      931   1442  stunted          
24 months   Keneba           GAMBIA                         0                  1      464   1442  stunted          
24 months   Keneba           GAMBIA                         1                  0       23   1442  stunted          
24 months   Keneba           GAMBIA                         1                  1       24   1442  stunted          
24 months   MAL-ED           BANGLADESH                     0                  0      106    212  stunted          
24 months   MAL-ED           BANGLADESH                     0                  1      100    212  stunted          
24 months   MAL-ED           BANGLADESH                     1                  0        5    212  stunted          
24 months   MAL-ED           BANGLADESH                     1                  1        1    212  stunted          
24 months   MAL-ED           BRAZIL                         0                  0      161    169  stunted          
24 months   MAL-ED           BRAZIL                         0                  1        7    169  stunted          
24 months   MAL-ED           BRAZIL                         1                  0        1    169  stunted          
24 months   MAL-ED           BRAZIL                         1                  1        0    169  stunted          
24 months   MAL-ED           INDIA                          0                  0      116    227  stunted          
24 months   MAL-ED           INDIA                          0                  1       93    227  stunted          
24 months   MAL-ED           INDIA                          1                  0       14    227  stunted          
24 months   MAL-ED           INDIA                          1                  1        4    227  stunted          
24 months   MAL-ED           NEPAL                          0                  0      174    228  stunted          
24 months   MAL-ED           NEPAL                          0                  1       48    228  stunted          
24 months   MAL-ED           NEPAL                          1                  0        4    228  stunted          
24 months   MAL-ED           NEPAL                          1                  1        2    228  stunted          
24 months   MAL-ED           PERU                           0                  0      127    201  stunted          
24 months   MAL-ED           PERU                           0                  1       74    201  stunted          
24 months   MAL-ED           PERU                           1                  0        0    201  stunted          
24 months   MAL-ED           PERU                           1                  1        0    201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  0      152    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  1       84    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  0        2    238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0    238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       59    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      155    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    214  stunted          
24 months   PROVIDE          BANGLADESH                     0                  0      378    578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  1      187    578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  0       10    578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  1        3    578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0      6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
