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

**Intervention Variable:** exclfeed3

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

agecat      studyid          country                        exclfeed3    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        4       4  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       4  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       4  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       4  stunted          
Birth       EE               PAKISTAN                       1                  0       20      35  stunted          
Birth       EE               PAKISTAN                       1                  1       15      35  stunted          
Birth       EE               PAKISTAN                       0                  0        0      35  stunted          
Birth       EE               PAKISTAN                       0                  1        0      35  stunted          
Birth       GMS-Nepal        NEPAL                          1                  0      317     458  stunted          
Birth       GMS-Nepal        NEPAL                          1                  1       63     458  stunted          
Birth       GMS-Nepal        NEPAL                          0                  0       63     458  stunted          
Birth       GMS-Nepal        NEPAL                          0                  1       15     458  stunted          
Birth       IRC              INDIA                          1                  0        0      10  stunted          
Birth       IRC              INDIA                          1                  1        0      10  stunted          
Birth       IRC              INDIA                          0                  0       10      10  stunted          
Birth       IRC              INDIA                          0                  1        0      10  stunted          
Birth       JiVitA-3         BANGLADESH                     1                  0     8076   13276  stunted          
Birth       JiVitA-3         BANGLADESH                     1                  1     3938   13276  stunted          
Birth       JiVitA-3         BANGLADESH                     0                  0      818   13276  stunted          
Birth       JiVitA-3         BANGLADESH                     0                  1      444   13276  stunted          
Birth       JiVitA-4         BANGLADESH                     1                  0       71     116  stunted          
Birth       JiVitA-4         BANGLADESH                     1                  1       34     116  stunted          
Birth       JiVitA-4         BANGLADESH                     0                  0        7     116  stunted          
Birth       JiVitA-4         BANGLADESH                     0                  1        4     116  stunted          
Birth       Keneba           GAMBIA                         1                  0     1130    1356  stunted          
Birth       Keneba           GAMBIA                         1                  1       68    1356  stunted          
Birth       Keneba           GAMBIA                         0                  0      149    1356  stunted          
Birth       Keneba           GAMBIA                         0                  1        9    1356  stunted          
Birth       MAL-ED           BANGLADESH                     1                  0      112     215  stunted          
Birth       MAL-ED           BANGLADESH                     1                  1       26     215  stunted          
Birth       MAL-ED           BANGLADESH                     0                  0       63     215  stunted          
Birth       MAL-ED           BANGLADESH                     0                  1       14     215  stunted          
Birth       MAL-ED           BRAZIL                         1                  0       10      57  stunted          
Birth       MAL-ED           BRAZIL                         1                  1        2      57  stunted          
Birth       MAL-ED           BRAZIL                         0                  0       39      57  stunted          
Birth       MAL-ED           BRAZIL                         0                  1        6      57  stunted          
Birth       MAL-ED           INDIA                          1                  0       16      41  stunted          
Birth       MAL-ED           INDIA                          1                  1        8      41  stunted          
Birth       MAL-ED           INDIA                          0                  0       17      41  stunted          
Birth       MAL-ED           INDIA                          0                  1        0      41  stunted          
Birth       MAL-ED           NEPAL                          1                  0        8      26  stunted          
Birth       MAL-ED           NEPAL                          1                  1        0      26  stunted          
Birth       MAL-ED           NEPAL                          0                  0       16      26  stunted          
Birth       MAL-ED           NEPAL                          0                  1        2      26  stunted          
Birth       MAL-ED           PERU                           1                  0       41     223  stunted          
Birth       MAL-ED           PERU                           1                  1        8     223  stunted          
Birth       MAL-ED           PERU                           0                  0      158     223  stunted          
Birth       MAL-ED           PERU                           0                  1       16     223  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  0       12     100  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0     100  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  0       79     100  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  1        9     100  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       14     102  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     102  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       69     102  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       16     102  stunted          
Birth       PROVIDE          BANGLADESH                     1                  0      353     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  1       34     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  0      138     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  1       14     539  stunted          
Birth       SAS-CompFeed     INDIA                          1                  0      257     364  stunted          
Birth       SAS-CompFeed     INDIA                          1                  1       89     364  stunted          
Birth       SAS-CompFeed     INDIA                          0                  0       12     364  stunted          
Birth       SAS-CompFeed     INDIA                          0                  1        6     364  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  0        7      10  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  1        3      10  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      10  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      10  stunted          
6 months    EE               PAKISTAN                       1                  0       17      39  stunted          
6 months    EE               PAKISTAN                       1                  1       22      39  stunted          
6 months    EE               PAKISTAN                       0                  0        0      39  stunted          
6 months    EE               PAKISTAN                       0                  1        0      39  stunted          
6 months    GMS-Nepal        NEPAL                          1                  0      292     441  stunted          
6 months    GMS-Nepal        NEPAL                          1                  1       75     441  stunted          
6 months    GMS-Nepal        NEPAL                          0                  0       56     441  stunted          
6 months    GMS-Nepal        NEPAL                          0                  1       18     441  stunted          
6 months    IRC              INDIA                          1                  0        0      10  stunted          
6 months    IRC              INDIA                          1                  1        0      10  stunted          
6 months    IRC              INDIA                          0                  0        8      10  stunted          
6 months    IRC              INDIA                          0                  1        2      10  stunted          
6 months    JiVitA-3         BANGLADESH                     1                  0     6391    9328  stunted          
6 months    JiVitA-3         BANGLADESH                     1                  1     2123    9328  stunted          
6 months    JiVitA-3         BANGLADESH                     0                  0      597    9328  stunted          
6 months    JiVitA-3         BANGLADESH                     0                  1      217    9328  stunted          
6 months    JiVitA-4         BANGLADESH                     1                  0       64      88  stunted          
6 months    JiVitA-4         BANGLADESH                     1                  1       12      88  stunted          
6 months    JiVitA-4         BANGLADESH                     0                  0        8      88  stunted          
6 months    JiVitA-4         BANGLADESH                     0                  1        4      88  stunted          
6 months    Keneba           GAMBIA                         1                  0     1317    1742  stunted          
6 months    Keneba           GAMBIA                         1                  1      224    1742  stunted          
6 months    Keneba           GAMBIA                         0                  0      166    1742  stunted          
6 months    Keneba           GAMBIA                         0                  1       35    1742  stunted          
6 months    MAL-ED           BANGLADESH                     1                  0      128     233  stunted          
6 months    MAL-ED           BANGLADESH                     1                  1       24     233  stunted          
6 months    MAL-ED           BANGLADESH                     0                  0       61     233  stunted          
6 months    MAL-ED           BANGLADESH                     0                  1       20     233  stunted          
6 months    MAL-ED           BRAZIL                         1                  0       59     187  stunted          
6 months    MAL-ED           BRAZIL                         1                  1        1     187  stunted          
6 months    MAL-ED           BRAZIL                         0                  0      123     187  stunted          
6 months    MAL-ED           BRAZIL                         0                  1        4     187  stunted          
6 months    MAL-ED           INDIA                          1                  0       90     210  stunted          
6 months    MAL-ED           INDIA                          1                  1       20     210  stunted          
6 months    MAL-ED           INDIA                          0                  0       81     210  stunted          
6 months    MAL-ED           INDIA                          0                  1       19     210  stunted          
6 months    MAL-ED           NEPAL                          1                  0       66     227  stunted          
6 months    MAL-ED           NEPAL                          1                  1        4     227  stunted          
6 months    MAL-ED           NEPAL                          0                  0      150     227  stunted          
6 months    MAL-ED           NEPAL                          0                  1        7     227  stunted          
6 months    MAL-ED           PERU                           1                  0       49     270  stunted          
6 months    MAL-ED           PERU                           1                  1       12     270  stunted          
6 months    MAL-ED           PERU                           0                  0      163     270  stunted          
6 months    MAL-ED           PERU                           0                  1       46     270  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  0       20     244  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  1        2     244  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  0      177     244  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  1       45     244  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       34     212  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1       12     212  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      125     212  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       41     212  stunted          
6 months    PROVIDE          BANGLADESH                     1                  0      364     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  1       64     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  0      144     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  1       32     604  stunted          
6 months    SAS-CompFeed     INDIA                          1                  0      260     398  stunted          
6 months    SAS-CompFeed     INDIA                          1                  1      119     398  stunted          
6 months    SAS-CompFeed     INDIA                          0                  0       13     398  stunted          
6 months    SAS-CompFeed     INDIA                          0                  1        6     398  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  0        3      10  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  1        7      10  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      10  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      10  stunted          
24 months   EE               PAKISTAN                       1                  0        5      20  stunted          
24 months   EE               PAKISTAN                       1                  1       15      20  stunted          
24 months   EE               PAKISTAN                       0                  0        0      20  stunted          
24 months   EE               PAKISTAN                       0                  1        0      20  stunted          
24 months   GMS-Nepal        NEPAL                          1                  0      181     384  stunted          
24 months   GMS-Nepal        NEPAL                          1                  1      141     384  stunted          
24 months   GMS-Nepal        NEPAL                          0                  0       33     384  stunted          
24 months   GMS-Nepal        NEPAL                          0                  1       29     384  stunted          
24 months   IRC              INDIA                          1                  0        0      10  stunted          
24 months   IRC              INDIA                          1                  1        0      10  stunted          
24 months   IRC              INDIA                          0                  0        4      10  stunted          
24 months   IRC              INDIA                          0                  1        6      10  stunted          
24 months   JiVitA-3         BANGLADESH                     1                  0     2275    4852  stunted          
24 months   JiVitA-3         BANGLADESH                     1                  1     2158    4852  stunted          
24 months   JiVitA-3         BANGLADESH                     0                  0      181    4852  stunted          
24 months   JiVitA-3         BANGLADESH                     0                  1      238    4852  stunted          
24 months   JiVitA-4         BANGLADESH                     1                  0       84     151  stunted          
24 months   JiVitA-4         BANGLADESH                     1                  1       52     151  stunted          
24 months   JiVitA-4         BANGLADESH                     0                  0        6     151  stunted          
24 months   JiVitA-4         BANGLADESH                     0                  1        9     151  stunted          
24 months   Keneba           GAMBIA                         1                  0      855    1420  stunted          
24 months   Keneba           GAMBIA                         1                  1      419    1420  stunted          
24 months   Keneba           GAMBIA                         0                  0       81    1420  stunted          
24 months   Keneba           GAMBIA                         0                  1       65    1420  stunted          
24 months   MAL-ED           BANGLADESH                     1                  0       71     205  stunted          
24 months   MAL-ED           BANGLADESH                     1                  1       64     205  stunted          
24 months   MAL-ED           BANGLADESH                     0                  0       35     205  stunted          
24 months   MAL-ED           BANGLADESH                     0                  1       35     205  stunted          
24 months   MAL-ED           BRAZIL                         1                  0       49     152  stunted          
24 months   MAL-ED           BRAZIL                         1                  1        3     152  stunted          
24 months   MAL-ED           BRAZIL                         0                  0       96     152  stunted          
24 months   MAL-ED           BRAZIL                         0                  1        4     152  stunted          
24 months   MAL-ED           INDIA                          1                  0       49     202  stunted          
24 months   MAL-ED           INDIA                          1                  1       53     202  stunted          
24 months   MAL-ED           INDIA                          0                  0       66     202  stunted          
24 months   MAL-ED           INDIA                          0                  1       34     202  stunted          
24 months   MAL-ED           NEPAL                          1                  0       53     220  stunted          
24 months   MAL-ED           NEPAL                          1                  1       14     220  stunted          
24 months   MAL-ED           NEPAL                          0                  0      119     220  stunted          
24 months   MAL-ED           NEPAL                          0                  1       34     220  stunted          
24 months   MAL-ED           PERU                           1                  0       25     198  stunted          
24 months   MAL-ED           PERU                           1                  1       18     198  stunted          
24 months   MAL-ED           PERU                           0                  0      101     198  stunted          
24 months   MAL-ED           PERU                           0                  1       54     198  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  0       14     228  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  1        5     228  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  0      134     228  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  1       75     228  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       10     184  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1       28     184  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       39     184  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      107     184  stunted          
24 months   PROVIDE          BANGLADESH                     1                  0      266     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  1      142     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  0      122     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  1       48     578  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
