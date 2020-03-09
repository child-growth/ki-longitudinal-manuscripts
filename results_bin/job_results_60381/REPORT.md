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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor

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




# Results Detail

## Results Plots
![](/tmp/0d34536c-4321-45aa-b6d1-ff267b5c9e1b/92a9b79e-ac72-49ae-a4a8-a1eddab4c25a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d34536c-4321-45aa-b6d1-ff267b5c9e1b/92a9b79e-ac72-49ae-a4a8-a1eddab4c25a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d34536c-4321-45aa-b6d1-ff267b5c9e1b/92a9b79e-ac72-49ae-a4a8-a1eddab4c25a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d34536c-4321-45aa-b6d1-ff267b5c9e1b/92a9b79e-ac72-49ae-a4a8-a1eddab4c25a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                0.4344265   0.4198684   0.4489846
0-24 months   JiVitA-3         BANGLADESH                     Underweight          NA                0.4055729   0.3882892   0.4228566
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.1250000   0.0290888   0.2209112
0-24 months   LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0868920   0.3797747
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.6844434   0.5847661   0.7841207
0-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.5711048   0.4022055   0.7400041
0-24 months   MAL-ED           INDIA                          Normal weight        NA                0.6355499   0.5447501   0.7263497
0-24 months   MAL-ED           INDIA                          Underweight          NA                0.5424105   0.3775946   0.7072263
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.5354101   0.4767565   0.5940636
0-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.4479024   0.3482799   0.5475250
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                0.6487938   0.5917607   0.7058270
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                0.4721094   0.2986639   0.6455550
0-24 months   PROBIT           BELARUS                        Normal weight        NA                0.8919230   0.8820809   0.9017651
0-24 months   PROBIT           BELARUS                        Underweight          NA                0.9098181   0.8708320   0.9488043
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.6017775   0.5355587   0.6679964
0-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.5464011   0.4295109   0.6632912
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.3817192   0.3344782   0.4289602
0-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.3862550   0.3289198   0.4435903
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.6288210   0.5904220   0.6672199
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.6000000   0.3523180   0.8476820
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.6034207   0.5841018   0.6227397
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                0.4994398   0.4328889   0.5659907
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                0.6892674   0.6722441   0.7062906
0-6 months    JiVitA-3         BANGLADESH                     Underweight          NA                0.6562555   0.6349047   0.6776062
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                0.8695652   0.7664853   0.9726451
0-6 months    MAL-ED           BANGLADESH                     Underweight          NA                0.6000000   0.3773683   0.8226317
0-6 months    MAL-ED           INDIA                          Normal weight        NA                0.7499307   0.6311793   0.8686821
0-6 months    MAL-ED           INDIA                          Underweight          NA                0.5182967   0.3031838   0.7334095
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                0.7189126   0.6522792   0.7855460
0-6 months    NIH-Birth        BANGLADESH                     Underweight          NA                0.6860876   0.5525948   0.8195804
0-6 months    PROBIT           BELARUS                        Normal weight        NA                0.9125250   0.9032690   0.9217809
0-6 months    PROBIT           BELARUS                        Underweight          NA                0.9331398   0.8965810   0.9696987
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                0.8405124   0.7794053   0.9016194
0-6 months    PROVIDE          BANGLADESH                     Underweight          NA                0.6997021   0.5688887   0.8305154
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                0.5053189   0.4354463   0.5751915
0-6 months    SAS-CompFeed     INDIA                          Underweight          NA                0.5499152   0.4549084   0.6449221
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                0.8624465   0.8459826   0.8789104
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                0.7893274   0.7178402   0.8608146
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                0.0414747   0.0260799   0.0568695
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          NA                0.0559441   0.0191705   0.0927176
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                0.1363636   0.0329768   0.2397505
6-24 months   LCNI-5           MALAWI                         Underweight          NA                0.2333333   0.0877343   0.3789324
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                0.5000000   0.3474407   0.6525593
6-24 months   MAL-ED           BANGLADESH                     Underweight          NA                0.4615385   0.2210093   0.7020676
6-24 months   MAL-ED           INDIA                          Normal weight        NA                0.5143255   0.3809385   0.6477125
6-24 months   MAL-ED           INDIA                          Underweight          NA                0.5713530   0.3406077   0.8020982
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                0.3168449   0.2398749   0.3938149
6-24 months   NIH-Birth        BANGLADESH                     Underweight          NA                0.2592075   0.1241322   0.3942829
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                0.2666398   0.1747311   0.3585485
6-24 months   PROVIDE          BANGLADESH                     Underweight          NA                0.3033335   0.1048169   0.5018501
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                0.2894924   0.2344510   0.3445339
6-24 months   SAS-CompFeed     INDIA                          Underweight          NA                0.2695603   0.1987316   0.3403891
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
0-24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9335822   0.8843836   0.9855178
0-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.8666667   0.6926702   5.0304525
0-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     0.8344077   0.5996053   1.1611574
0-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Underweight          Normal weight     0.8534506   0.6077451   1.1984926
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8365596   0.6527747   1.0720881
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     0.7276725   0.4984072   1.0623989
0-24 months   PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Underweight          Normal weight     1.0200635   0.9759102   1.0662145
0-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     0.9079785   0.7133283   1.1557441
0-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     1.0118827   0.8350814   1.2261159
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     0.9541667   0.6286319   1.4482784
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.8276809   0.7216450   0.9492973
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     0.9521058   0.9141007   0.9916910
0-6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     0.6900000   0.4673961   1.0186222
0-6 months    MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Underweight          Normal weight     0.6911261   0.4422388   1.0800845
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.9543408   0.7693065   1.1838797
0-6 months    PROBIT           BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Underweight          Normal weight     1.0225910   0.9820277   1.0648298
0-6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     0.8324709   0.6809978   1.0176358
0-6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     1.0882538   0.8737879   1.3553590
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9152190   0.8343410   1.0039369
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight          Normal weight     1.3488733   0.6340510   2.8695789
6-24 months   LCNI-5           MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Underweight          Normal weight     1.7111111   0.6408783   4.5685760
6-24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     0.9230769   0.5044974   1.6889501
6-24 months   MAL-ED           INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Underweight          Normal weight     1.1108781   0.6862777   1.7981789
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     0.8180898   0.4594733   1.4566044
6-24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     1.1376154   0.5415199   2.3898819
6-24 months   SAS-CompFeed     INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Underweight          Normal weight     0.9311480   0.6733597   1.2876277
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     0.9560824   0.4283383   2.1340459


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0117680   -0.0209296   -0.0026064
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0416667   -0.0265326    0.1098659
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0369024   -0.0827140    0.0089092
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0288083   -0.0775314    0.0199148
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0152200   -0.0406957    0.0102556
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0241984   -0.0475448   -0.0008520
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0007438   -0.0011255    0.0026132
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0143188   -0.0495461    0.0209085
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0026894   -0.0238363    0.0292152
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0006158   -0.0068812    0.0056495
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0078025   -0.0130095   -0.0025954
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0134082   -0.0243756   -0.0024409
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0662865   -0.1326161    0.0000431
0-6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0631837   -0.1363682    0.0100008
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0059081   -0.0357482    0.0239320
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0007350   -0.0010764    0.0025463
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0405124   -0.0806094   -0.0004154
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0175569   -0.0230010    0.0581148
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0043460   -0.0092362    0.0005443
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0026060   -0.0045811    0.0097930
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0393120   -0.0337215    0.1123456
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0081967   -0.0695069    0.0531135
6-24 months   MAL-ED           INDIA                          Normal weight        NA                 0.0225166   -0.0456884    0.0907216
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0138146   -0.0507577    0.0231286
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0097830   -0.0445299    0.0640959
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0018212   -0.0338376    0.0301952
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0003052   -0.0056628    0.0050524


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
0-24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0278428   -0.0497481   -0.0063946
0-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.2500000   -0.2838955    0.5618802
0-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0569885   -0.1301666    0.0114513
0-24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0474804   -0.1316479    0.0304271
0-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0292586   -0.0792360    0.0184045
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0387425   -0.0772550   -0.0016068
0-24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0008333   -0.0012636    0.0029257
0-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0243741   -0.0862330    0.0339620
0-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                 0.0069962   -0.0645321    0.0737184
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0009803   -0.0110044    0.0089444
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0130998   -0.0218862   -0.0043889
0-6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0198388   -0.0362129   -0.0037234
0-6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0825200   -0.1719002    0.0000433
0-6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0920043   -0.2067796    0.0118548
0-6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0082862   -0.0510201    0.0327102
0-6 months    PROBIT           BELARUS                        Normal weight        NA                 0.0008048   -0.0011810    0.0027866
0-6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0506405   -0.1030728   -0.0007004
0-6 months    SAS-CompFeed     INDIA                          Normal weight        NA                 0.0335775   -0.0473224    0.1082284
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0050646   -0.0107879    0.0006262
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0591178   -0.1182440    0.2083487
6-24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.2237762   -0.3205992    0.5437500
6-24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0166667   -0.1486245    0.1001314
6-24 months   MAL-ED           INDIA                          Normal weight        NA                 0.0419427   -0.0943009    0.1612235
6-24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0455880   -0.1746412    0.0692866
6-24 months   PROVIDE          BANGLADESH                     Normal weight        NA                 0.0353914   -0.1812534    0.2123030
6-24 months   SAS-CompFeed     INDIA                          Normal weight        NA                -0.0063309   -0.1239751    0.0989998
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0040531   -0.0777733    0.0646246
