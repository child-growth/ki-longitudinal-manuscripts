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

agecat        studyid          country                        mbmi             ever_swasted   n_cell       n
------------  ---------------  -----------------------------  --------------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     2647    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      116    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      416    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1       38    3217
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               0    15561   26836
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               1      999   26836
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     9638   26836
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 1      638   26836
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
0-24 months   SAS-CompFeed     INDIA                          Normal weight               0      899    1390
0-24 months   SAS-CompFeed     INDIA                          Normal weight               1      120    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight                 0      288    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight                 1       83    1390
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     2155    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      152    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       34    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        4    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     8415    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1      866    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      437    9797
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1       79    9797
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               0    15812   26739
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               1      688   26739
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 0     9821   26739
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 1      418   26739
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
0-6 months    SAS-CompFeed     INDIA                          Normal weight               0      959    1383
0-6 months    SAS-CompFeed     INDIA                          Normal weight               1       55    1383
0-6 months    SAS-CompFeed     INDIA                          Underweight                 0      336    1383
0-6 months    SAS-CompFeed     INDIA                          Underweight                 1       33    1383
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
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               0    10308   17246
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               1      319   17246
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     6388   17246
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 1      231   17246
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
6-24 months   SAS-CompFeed     INDIA                          Normal weight               0      869    1277
6-24 months   SAS-CompFeed     INDIA                          Normal weight               1       68    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight                 0      284    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight                 1       56    1277
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




# Results Detail

## Results Plots
![](/tmp/a2ce0cf4-37a0-4d4f-8ca8-43ca7e72f3b9/c53f7bd8-1dea-4c8b-8b51-c9027b00fb86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2ce0cf4-37a0-4d4f-8ca8-43ca7e72f3b9/c53f7bd8-1dea-4c8b-8b51-c9027b00fb86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2ce0cf4-37a0-4d4f-8ca8-43ca7e72f3b9/c53f7bd8-1dea-4c8b-8b51-c9027b00fb86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2ce0cf4-37a0-4d4f-8ca8-43ca7e72f3b9/c53f7bd8-1dea-4c8b-8b51-c9027b00fb86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0421032   0.0296101   0.0545962
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.0807495   0.0553598   0.1061392
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0603048   0.0561429   0.0644666
0-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0621490   0.0567753   0.0675227
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0585586   0.0276115   0.0895057
0-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.2500000   0.0996753   0.4003247
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0932642   0.0521524   0.1343761
0-24 months   MAL-ED         INDIA          Underweight          NA                0.1632653   0.0595626   0.2669680
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1390352   0.1092582   0.1688122
0-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.2560766   0.1699578   0.3421954
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0811557   0.0605282   0.1017833
0-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.1657756   0.0692364   0.2623148
0-24 months   PROBIT         BELARUS        Normal weight        NA                0.0871634   0.0519807   0.1223461
0-24 months   PROBIT         BELARUS        Underweight          NA                0.1086782   0.0632632   0.1540933
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0550692   0.0358531   0.0742853
0-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.0894300   0.0402635   0.1385966
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1189158   0.0915960   0.1462356
0-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.2161168   0.1712915   0.2609421
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0933374   0.0874136   0.0992612
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.1512911   0.1192415   0.1833407
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                0.0417033   0.0382135   0.0451930
0-6 months    JiVitA-3       BANGLADESH     Underweight          NA                0.0408941   0.0363772   0.0454111
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                0.0495495   0.0209465   0.0781526
0-6 months    MAL-ED         BANGLADESH     Underweight          NA                0.1562500   0.0301989   0.2823011
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    MAL-ED         INDIA          Underweight          NA                0.1428571   0.0446763   0.2410380
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.0809711   0.0574765   0.1044657
0-6 months    NIH-Birth      BANGLADESH     Underweight          NA                0.1349399   0.0678226   0.2020572
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                0.0640466   0.0457263   0.0823669
0-6 months    NIH-Crypto     BANGLADESH     Underweight          NA                0.0882353   0.0207757   0.1556949
0-6 months    PROBIT         BELARUS        Normal weight        NA                0.0865951   0.0513938   0.1217963
0-6 months    PROBIT         BELARUS        Underweight          NA                0.1054229   0.0610459   0.1497999
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0369004   0.0210177   0.0527831
0-6 months    PROVIDE        BANGLADESH     Underweight          NA                0.0629921   0.0207072   0.1052771
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0540559   0.0387643   0.0693475
0-6 months    SAS-CompFeed   INDIA          Underweight          NA                0.0881782   0.0403059   0.1360506
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0663827   0.0613061   0.0714594
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          NA                0.1016795   0.0745235   0.1288355
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0420336   0.0295506   0.0545166
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.0813617   0.0549080   0.1078153
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0299866   0.0265438   0.0334294
6-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0349459   0.0301511   0.0397408
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0725534   0.0482645   0.0968423
6-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.1676411   0.0853009   0.2499813
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0211161   0.0101649   0.0320673
6-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.0895522   0.0211337   0.1579708
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0734335   0.0475471   0.0993200
6-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.1568144   0.1220109   0.1916179
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0328087   0.0289360   0.0366813
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0669167   0.0434304   0.0904030


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0610001   0.0575046   0.0644957
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.0826772   0.0487426   0.1166117
0-24 months   MAL-ED         INDIA          NA                   NA                0.1074380   0.0683415   0.1465345
0-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   PROBIT         BELARUS        NA                   NA                0.0877768   0.0530196   0.1225340
0-24 months   PROVIDE        BANGLADESH     NA                   NA                0.0612855   0.0430966   0.0794744
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.1460432   0.1145875   0.1774988
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0964581   0.0906120   0.1023042
0-6 months    JiVitA-3       BANGLADESH     NA                   NA                0.0413628   0.0383754   0.0443502
0-6 months    MAL-ED         BANGLADESH     NA                   NA                0.0629921   0.0330555   0.0929287
0-6 months    MAL-ED         INDIA          NA                   NA                0.0867769   0.0512358   0.1223179
0-6 months    NIH-Birth      BANGLADESH     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto     BANGLADESH     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    PROBIT         BELARUS        NA                   NA                0.0871212   0.0523702   0.1218722
0-6 months    PROVIDE        BANGLADESH     NA                   NA                0.0418535   0.0266676   0.0570395
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0636298   0.0408673   0.0863923
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0683402   0.0633339   0.0733464
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0318915   0.0289933   0.0347896
6-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.0971026   0.0697212   0.1244840
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0345469   0.0306862   0.0384077


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.9178948   1.2751869    2.884534
0-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.0305825   0.9300820    1.141943
0-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     4.2692308   1.9172672    9.506412
0-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.7505669   0.8079836    3.792756
0-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     1.8418116   1.2371539    2.741995
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.0426851   1.0810429    3.859757
0-24 months   PROBIT         BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   PROBIT         BELARUS        Underweight          Normal weight     1.2468336   0.8293532    1.874466
0-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     1.6239579   0.8466592    3.114877
0-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     1.8173940   1.5221159    2.169954
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.6209055   1.2993058    2.022106
0-6 months    JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3       BANGLADESH     Underweight          Normal weight     0.9805968   0.8645324    1.112243
0-6 months    MAL-ED         BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    MAL-ED         BANGLADESH     Underweight          Normal weight     3.1534091   1.1694063    8.503450
0-6 months    MAL-ED         INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    MAL-ED         INDIA          Underweight          Normal weight     1.9693878   0.8390927    4.622240
0-6 months    NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    NIH-Birth      BANGLADESH     Underweight          Normal weight     1.6665193   0.9367362    2.964854
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    NIH-Crypto     BANGLADESH     Underweight          Normal weight     1.3776738   0.6090195    3.116460
0-6 months    PROBIT         BELARUS        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    PROBIT         BELARUS        Underweight          Normal weight     1.2174239   0.8109761    1.827576
0-6 months    PROVIDE        BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    PROVIDE        BANGLADESH     Underweight          Normal weight     1.7070866   0.7690289    3.789382
0-6 months    SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    SAS-CompFeed   INDIA          Underweight          Normal weight     1.6312417   1.1645433    2.284972
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.5317164   1.1600996    2.022374
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.9356338   1.2676760    2.955549
6-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.1653851   0.9803946    1.385282
6-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.3105883   1.2763267    4.182956
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     4.2409382   1.6843541   10.678014
6-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     2.1354602   1.6400299    2.780553
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     2.0396055   1.4083686    2.953766


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                 0.0057675    0.0018166   0.0097184
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                 0.0006954   -0.0017235   0.0031143
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                 0.0241186    0.0032585   0.0449787
0-24 months   MAL-ED         INDIA          Normal weight        NA                 0.0141738   -0.0086912   0.0370388
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                 0.0196187    0.0043915   0.0348459
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0062615   -0.0022111   0.0147340
0-24 months   PROBIT         BELARUS        Normal weight        NA                 0.0006134   -0.0010014   0.0022283
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                 0.0062163   -0.0037994   0.0162321
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                 0.0271274    0.0173108   0.0369440
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0031207    0.0014285   0.0048129
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                -0.0003405   -0.0023271   0.0016461
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                 0.0134426   -0.0034159   0.0303011
0-6 months    MAL-ED         INDIA          Normal weight        NA                 0.0142380   -0.0072807   0.0357567
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                 0.0090611   -0.0026933   0.0208154
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0021786   -0.0041367   0.0084939
0-6 months    PROBIT         BELARUS        Normal weight        NA                 0.0005261   -0.0010943   0.0021466
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                 0.0049531   -0.0036567   0.0135629
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                 0.0095739    0.0001863   0.0189615
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0019574    0.0005311   0.0033838
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                 0.0058371    0.0019155   0.0097586
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                 0.0019048   -0.0002844   0.0040941
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                 0.0160075    0.0018093   0.0302056
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0062811   -0.0002381   0.0128003
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                 0.0236690    0.0169610   0.0303771
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0017383    0.0005012   0.0029754


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                 0.1204810    0.0289967   0.2033461
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                 0.0113996   -0.0290356   0.0502459
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                 0.2917203    0.0252675   0.4853356
0-24 months   MAL-ED         INDIA          Normal weight        NA                 0.1319251   -0.1037369   0.3172702
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                 0.1236571    0.0241404   0.2130252
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0716275   -0.0292590   0.1626253
0-24 months   PROBIT         BELARUS        Normal weight        NA                 0.0069886   -0.0124541   0.0260579
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                 0.1014320   -0.0749760   0.2488907
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                 0.1857492    0.1275254   0.2400875
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0323529    0.0147348   0.0496561
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                -0.0082317   -0.0574635   0.0387080
0-6 months    MAL-ED         BANGLADESH     Normal weight        NA                 0.2134009   -0.0806932   0.4274618
0-6 months    MAL-ED         INDIA          Normal weight        NA                 0.1640760   -0.1141862   0.3728437
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                 0.1006424   -0.0375447   0.2204249
0-6 months    NIH-Crypto     BANGLADESH     Normal weight        NA                 0.0328967   -0.0669351   0.1233873
0-6 months    PROBIT         BELARUS        Normal weight        NA                 0.0060391   -0.0135089   0.0252101
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                 0.1183448   -0.1080833   0.2985040
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                 0.1504624    0.0397895   0.2483792
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0286425    0.0076370   0.0492035
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                 0.1219345    0.0309613   0.2043671
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                 0.0597291   -0.0110988   0.1255955
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                 0.1807509    0.0108729   0.3214532
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                 0.2292609   -0.0217519   0.4186077
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                 0.2437530    0.1602411   0.3189598
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                 0.0503163    0.0142472   0.0850657
