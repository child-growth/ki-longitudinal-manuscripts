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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        mbmi             wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  --------------  ------------  -------  -----
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794
0-24 months   JiVitA-3         BANGLADESH                     Normal weight              0     2531   7538
0-24 months   JiVitA-3         BANGLADESH                     Normal weight              1     1949   7538
0-24 months   JiVitA-3         BANGLADESH                     Underweight                0     1821   7538
0-24 months   JiVitA-3         BANGLADESH                     Underweight                1     1237   7538
0-24 months   LCNI-5           MALAWI                         Normal weight              0       42     78
0-24 months   LCNI-5           MALAWI                         Normal weight              1        6     78
0-24 months   LCNI-5           MALAWI                         Underweight                0       23     78
0-24 months   LCNI-5           MALAWI                         Underweight                1        7     78
0-24 months   MAL-ED           BANGLADESH                     Normal weight              0       30    122
0-24 months   MAL-ED           BANGLADESH                     Normal weight              1       64    122
0-24 months   MAL-ED           BANGLADESH                     Underweight                0       13    122
0-24 months   MAL-ED           BANGLADESH                     Underweight                1       15    122
0-24 months   MAL-ED           BRAZIL                         Normal weight              0        6     23
0-24 months   MAL-ED           BRAZIL                         Normal weight              1       15     23
0-24 months   MAL-ED           BRAZIL                         Underweight                0        0     23
0-24 months   MAL-ED           BRAZIL                         Underweight                1        2     23
0-24 months   MAL-ED           INDIA                          Normal weight              0       49    178
0-24 months   MAL-ED           INDIA                          Normal weight              1       82    178
0-24 months   MAL-ED           INDIA                          Underweight                0       21    178
0-24 months   MAL-ED           INDIA                          Underweight                1       26    178
0-24 months   MAL-ED           NEPAL                          Normal weight              0       20     98
0-24 months   MAL-ED           NEPAL                          Normal weight              1       78     98
0-24 months   MAL-ED           NEPAL                          Underweight                0        0     98
0-24 months   MAL-ED           NEPAL                          Underweight                1        0     98
0-24 months   MAL-ED           PERU                           Normal weight              0        5     35
0-24 months   MAL-ED           PERU                           Normal weight              1       26     35
0-24 months   MAL-ED           PERU                           Underweight                0        1     35
0-24 months   MAL-ED           PERU                           Underweight                1        3     35
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              0       14     80
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              1       66     80
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                1        0     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0        8     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       38     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        4     51
0-24 months   NIH-Birth        BANGLADESH                     Normal weight              0      152    421
0-24 months   NIH-Birth        BANGLADESH                     Normal weight              1      176    421
0-24 months   NIH-Birth        BANGLADESH                     Underweight                0       50    421
0-24 months   NIH-Birth        BANGLADESH                     Underweight                1       43    421
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight              0       94    309
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight              1      173    309
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                0       22    309
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                1       20    309
0-24 months   PROBIT           BELARUS                        Normal weight              0      407   3941
0-24 months   PROBIT           BELARUS                        Normal weight              1     3357   3941
0-24 months   PROBIT           BELARUS                        Underweight                0       16   3941
0-24 months   PROBIT           BELARUS                        Underweight                1      161   3941
0-24 months   PROVIDE          BANGLADESH                     Normal weight              0       88    303
0-24 months   PROVIDE          BANGLADESH                     Normal weight              1      134    303
0-24 months   PROVIDE          BANGLADESH                     Underweight                0       37    303
0-24 months   PROVIDE          BANGLADESH                     Underweight                1       44    303
0-24 months   SAS-CompFeed     INDIA                          Normal weight              0      288    744
0-24 months   SAS-CompFeed     INDIA                          Normal weight              1      185    744
0-24 months   SAS-CompFeed     INDIA                          Underweight                0      170    744
0-24 months   SAS-CompFeed     INDIA                          Underweight                1      101    744
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      255    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      432    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        6    702
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        9    702
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              0      988   2693
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              1     1503   2693
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                0      101   2693
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                1      101   2693
0-6 months    JiVitA-3         BANGLADESH                     Normal weight              0      870   4714
0-6 months    JiVitA-3         BANGLADESH                     Normal weight              1     1949   4714
0-6 months    JiVitA-3         BANGLADESH                     Underweight                0      658   4714
0-6 months    JiVitA-3         BANGLADESH                     Underweight                1     1237   4714
0-6 months    LCNI-5           MALAWI                         Normal weight              0        4      4
0-6 months    LCNI-5           MALAWI                         Normal weight              1        0      4
0-6 months    LCNI-5           MALAWI                         Underweight                0        0      4
0-6 months    LCNI-5           MALAWI                         Underweight                1        0      4
0-6 months    MAL-ED           BANGLADESH                     Normal weight              0        6     61
0-6 months    MAL-ED           BANGLADESH                     Normal weight              1       40     61
0-6 months    MAL-ED           BANGLADESH                     Underweight                0        6     61
0-6 months    MAL-ED           BANGLADESH                     Underweight                1        9     61
0-6 months    MAL-ED           BRAZIL                         Normal weight              0        1     14
0-6 months    MAL-ED           BRAZIL                         Normal weight              1       11     14
0-6 months    MAL-ED           BRAZIL                         Underweight                0        0     14
0-6 months    MAL-ED           BRAZIL                         Underweight                1        2     14
0-6 months    MAL-ED           INDIA                          Normal weight              0       15     83
0-6 months    MAL-ED           INDIA                          Normal weight              1       45     83
0-6 months    MAL-ED           INDIA                          Underweight                0       11     83
0-6 months    MAL-ED           INDIA                          Underweight                1       12     83
0-6 months    MAL-ED           NEPAL                          Normal weight              0        9     48
0-6 months    MAL-ED           NEPAL                          Normal weight              1       39     48
0-6 months    MAL-ED           NEPAL                          Underweight                0        0     48
0-6 months    MAL-ED           NEPAL                          Underweight                1        0     48
0-6 months    MAL-ED           PERU                           Normal weight              0        0     11
0-6 months    MAL-ED           PERU                           Normal weight              1       11     11
0-6 months    MAL-ED           PERU                           Underweight                0        0     11
0-6 months    MAL-ED           PERU                           Underweight                1        0     11
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight              0        5     29
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight              1       24     29
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                1        0     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       12     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        1     14
0-6 months    NIH-Birth        BANGLADESH                     Normal weight              0       50    223
0-6 months    NIH-Birth        BANGLADESH                     Normal weight              1      128    223
0-6 months    NIH-Birth        BANGLADESH                     Underweight                0       14    223
0-6 months    NIH-Birth        BANGLADESH                     Underweight                1       31    223
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight              0       16    196
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight              1      160    196
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                0        4    196
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                1       16    196
0-6 months    PROBIT           BELARUS                        Normal weight              0      319   3816
0-6 months    PROBIT           BELARUS                        Normal weight              1     3326   3816
0-6 months    PROBIT           BELARUS                        Underweight                0       12   3816
0-6 months    PROBIT           BELARUS                        Underweight                1      159   3816
0-6 months    PROVIDE          BANGLADESH                     Normal weight              0       21    180
0-6 months    PROVIDE          BANGLADESH                     Normal weight              1      110    180
0-6 months    PROVIDE          BANGLADESH                     Underweight                0       15    180
0-6 months    PROVIDE          BANGLADESH                     Underweight                1       34    180
0-6 months    SAS-CompFeed     INDIA                          Normal weight              0       98    306
0-6 months    SAS-CompFeed     INDIA                          Normal weight              1      102    306
0-6 months    SAS-CompFeed     INDIA                          Underweight                0       48    306
0-6 months    SAS-CompFeed     INDIA                          Underweight                1       58    306
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0       96    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      232    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        5    336
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight              0      230   1790
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight              1     1441   1790
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                0       24   1790
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                1       95   1790
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              0      624    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight              1       27    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                0      135    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                1        8    794
6-24 months   JiVitA-3         BANGLADESH                     Normal weight              0     1661   2824
6-24 months   JiVitA-3         BANGLADESH                     Normal weight              1        0   2824
6-24 months   JiVitA-3         BANGLADESH                     Underweight                0     1163   2824
6-24 months   JiVitA-3         BANGLADESH                     Underweight                1        0   2824
6-24 months   LCNI-5           MALAWI                         Normal weight              0       38     74
6-24 months   LCNI-5           MALAWI                         Normal weight              1        6     74
6-24 months   LCNI-5           MALAWI                         Underweight                0       23     74
6-24 months   LCNI-5           MALAWI                         Underweight                1        7     74
6-24 months   MAL-ED           BANGLADESH                     Normal weight              0       24     61
6-24 months   MAL-ED           BANGLADESH                     Normal weight              1       24     61
6-24 months   MAL-ED           BANGLADESH                     Underweight                0        7     61
6-24 months   MAL-ED           BANGLADESH                     Underweight                1        6     61
6-24 months   MAL-ED           BRAZIL                         Normal weight              0        5      9
6-24 months   MAL-ED           BRAZIL                         Normal weight              1        4      9
6-24 months   MAL-ED           BRAZIL                         Underweight                0        0      9
6-24 months   MAL-ED           BRAZIL                         Underweight                1        0      9
6-24 months   MAL-ED           INDIA                          Normal weight              0       34     95
6-24 months   MAL-ED           INDIA                          Normal weight              1       37     95
6-24 months   MAL-ED           INDIA                          Underweight                0       10     95
6-24 months   MAL-ED           INDIA                          Underweight                1       14     95
6-24 months   MAL-ED           NEPAL                          Normal weight              0       11     50
6-24 months   MAL-ED           NEPAL                          Normal weight              1       39     50
6-24 months   MAL-ED           NEPAL                          Underweight                0        0     50
6-24 months   MAL-ED           NEPAL                          Underweight                1        0     50
6-24 months   MAL-ED           PERU                           Normal weight              0        5     24
6-24 months   MAL-ED           PERU                           Normal weight              1       15     24
6-24 months   MAL-ED           PERU                           Underweight                0        1     24
6-24 months   MAL-ED           PERU                           Underweight                1        3     24
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              0        9     51
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight              1       42     51
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                1        0     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              0        7     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight              1       26     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                1        3     37
6-24 months   NIH-Birth        BANGLADESH                     Normal weight              0      102    198
6-24 months   NIH-Birth        BANGLADESH                     Normal weight              1       48    198
6-24 months   NIH-Birth        BANGLADESH                     Underweight                0       36    198
6-24 months   NIH-Birth        BANGLADESH                     Underweight                1       12    198
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight              0       78    113
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight              1       13    113
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                0       18    113
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                1        4    113
6-24 months   PROBIT           BELARUS                        Normal weight              0       88    125
6-24 months   PROBIT           BELARUS                        Normal weight              1       31    125
6-24 months   PROBIT           BELARUS                        Underweight                0        4    125
6-24 months   PROBIT           BELARUS                        Underweight                1        2    125
6-24 months   PROVIDE          BANGLADESH                     Normal weight              0       67    123
6-24 months   PROVIDE          BANGLADESH                     Normal weight              1       24    123
6-24 months   PROVIDE          BANGLADESH                     Underweight                0       22    123
6-24 months   PROVIDE          BANGLADESH                     Underweight                1       10    123
6-24 months   SAS-CompFeed     INDIA                          Normal weight              0      190    438
6-24 months   SAS-CompFeed     INDIA                          Normal weight              1       83    438
6-24 months   SAS-CompFeed     INDIA                          Underweight                0      122    438
6-24 months   SAS-CompFeed     INDIA                          Underweight                1       43    438
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              0      159    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight              1      200    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                0        3    366
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                1        4    366
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              0      758    903
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight              1       62    903
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                0       77    903
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                1        6    903


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
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/315d1501-59b6-4877-870a-27d657c81485/6cca8467-785b-456c-b8f5-3be694a95cfc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/315d1501-59b6-4877-870a-27d657c81485/6cca8467-785b-456c-b8f5-3be694a95cfc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/315d1501-59b6-4877-870a-27d657c81485/6cca8467-785b-456c-b8f5-3be694a95cfc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/315d1501-59b6-4877-870a-27d657c81485/6cca8467-785b-456c-b8f5-3be694a95cfc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.4350446   0.4204788   0.4496104
0-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.4045128   0.3872303   0.4217952
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.6808511   0.5815527   0.7801494
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.5357143   0.3749740   0.6964546
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.6259542   0.5328629   0.7190455
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.5531915   0.3998138   0.7065691
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.5365854   0.4780574   0.5951134
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.4623656   0.3638762   0.5608549
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.6479401   0.5908723   0.7050078
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.4761905   0.3221133   0.6302677
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.8918704   0.8820518   0.9016889
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.9096045   0.8697554   0.9494537
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.6036036   0.5376831   0.6695241
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.5432099   0.4319946   0.6544251
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.3911205   0.3433971   0.4388439
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.3726937   0.3160952   0.4292922
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6033721   0.5840502   0.6226941
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.5000000   0.4345373   0.5654627
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.6913799   0.6743343   0.7084256
0-6 months    JiVitA-3         BANGLADESH                     Underweight          NA                0.6527704   0.6313237   0.6742172
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.8695652   0.7664853   0.9726451
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.6000000   0.3773683   0.8226317
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.7500000   0.6348133   0.8651867
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.5217391   0.3201168   0.7233615
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.7191011   0.6526289   0.7855734
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.6888889   0.5565481   0.8212297
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.9124829   0.9032553   0.9217104
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.9298246   0.8911173   0.9685318
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.8396947   0.7787342   0.9006551
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.6938776   0.5649886   0.8227665
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.5100000   0.4401675   0.5798325
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.5471698   0.4514150   0.6429246
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8623579   0.8458945   0.8788213
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7983193   0.7270042   0.8696344
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.1363636   0.0329768   0.2397505
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0877343   0.3789324
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.5000000   0.3474407   0.6525593
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.4615385   0.2210093   0.7020676
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.5211268   0.3887216   0.6535319
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.5833333   0.3604966   0.8061700
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.3200000   0.2435094   0.3964906
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.2500000   0.1270597   0.3729403
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.2637363   0.1740755   0.3533970
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.3125000   0.1324872   0.4925128
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.3040293   0.2472596   0.3607990
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.2606061   0.1936822   0.3275299
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.0756098   0.0575698   0.0936498
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.0722892   0.0168678   0.1277105


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4226585   0.4115120   0.4338051
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6475410   0.5613826   0.7336993
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8926668   0.8831189   0.9022148
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6282051   0.5902579   0.6661523
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5956183   0.5770555   0.6141810
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6758591   0.6624976   0.6892206
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.8032787   0.7044023   0.9021551
0-6 months    MAL-ED           INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9132600   0.9042761   0.9222438
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.8000000   0.7425836   0.8574164
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.8581006   0.8420009   0.8742002
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0753045   0.0581490   0.0924601


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9298190   0.8806933   0.9816848
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     0.7868304   0.5636090   1.0984601
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     0.8837571   0.6451836   1.2105496
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8616813   0.6782339   1.0947472
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     0.7349298   0.5254528   1.0279170
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.0198842   0.9748391   1.0670108
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     0.8999447   0.7134825   1.1351372
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     0.9528872   0.7841920   1.1578721
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8286760   0.7241726   0.9482600
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9441559   0.9061588   0.9837463
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     0.6900000   0.4673961   1.0186222
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     0.6956522   0.4589546   1.0544223
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9579861   0.7740550   1.1856229
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.0190050   0.9762734   1.0636069
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     0.8263451   0.6769325   1.0087360
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.0728820   0.8591064   1.3398523
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9257402   0.8449224   1.0142883
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     0.9230769   0.5044974   1.6889501
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.1193694   0.7076813   1.7705538
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.7812500   0.4520464   1.3501968
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.1848958   0.6069821   2.3130472
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     0.8571742   0.6239877   1.1775031
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9560824   0.4283383   2.1340459


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0123861   -0.0215641   -0.0032081
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0333101   -0.0781269    0.0115068
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0192126   -0.0671731    0.0287479
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0163953   -0.0417725    0.0089818
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0233446   -0.0463504   -0.0003388
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0007965   -0.0010544    0.0026473
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0161449   -0.0507237    0.0184339
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0067119   -0.0337199    0.0202961
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0077539   -0.0129369   -0.0025708
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0155208   -0.0265468   -0.0044947
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0662865   -0.1326161    0.0000431
0-6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0632530   -0.1321914    0.0056853
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0060966   -0.0360118    0.0238185
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0007771   -0.0010097    0.0025639
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0396947   -0.0795722    0.0001829
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0128758   -0.0281999    0.0539515
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0042573   -0.0091744    0.0006598
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0081967   -0.0695069    0.0531135
6-24 months   MAL-ED           INDIA                          Normal weight        NA                 0.0157153   -0.0504677    0.0818984
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0169697   -0.0526533    0.0187139
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0126865   -0.0397556    0.0651286
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0163581   -0.0494776    0.0167614
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0003052   -0.0056628    0.0050524


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0293052   -0.0512506   -0.0078180
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0514409   -0.1229364    0.0155026
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0316653   -0.1139484    0.0445400
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0315180   -0.0812990    0.0159712
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0373756   -0.0752824   -0.0008051
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0008923   -0.0011838    0.0029640
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0274825   -0.0881844    0.0298332
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0174603   -0.0900408    0.0502874
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0130182   -0.0217632   -0.0043481
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0229645   -0.0394308   -0.0067591
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0825200   -0.1719002    0.0000433
0-6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0921053   -0.2004799    0.0064857
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0085506   -0.0513998    0.0325522
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0008509   -0.0011079    0.0028059
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0496183   -0.1017453    0.0000424
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0246250   -0.0572330    0.1001450
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0049613   -0.0107160    0.0007606
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0166667   -0.1486245    0.1001314
6-24 months   MAL-ED           INDIA                          Normal weight        NA                 0.0292737   -0.1023828    0.1452066
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0560000   -0.1803315    0.0552349
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0458953   -0.1620130    0.2166045
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0568638   -0.1780787    0.0518791
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040531   -0.0777733    0.0646246
