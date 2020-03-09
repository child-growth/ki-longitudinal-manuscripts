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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        mbmi             ever_co   n_cell       n
------------  ---------------  -----------------------------  --------------  --------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2453    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight          1      309    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight            0      377    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3216
0-24 months   JiVitA-3         BANGLADESH                     Normal weight          0    15066   26803
0-24 months   JiVitA-3         BANGLADESH                     Normal weight          1     1470   26803
0-24 months   JiVitA-3         BANGLADESH                     Underweight            0     9353   26803
0-24 months   JiVitA-3         BANGLADESH                     Underweight            1      914   26803
0-24 months   LCNI-5           MALAWI                         Normal weight          0      665     837
0-24 months   LCNI-5           MALAWI                         Normal weight          1       27     837
0-24 months   LCNI-5           MALAWI                         Underweight            0      130     837
0-24 months   LCNI-5           MALAWI                         Underweight            1       15     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight          0      194     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight          1       28     254
0-24 months   MAL-ED           BANGLADESH                     Underweight            0       21     254
0-24 months   MAL-ED           BANGLADESH                     Underweight            1       11     254
0-24 months   MAL-ED           BRAZIL                         Normal weight          0      209     221
0-24 months   MAL-ED           BRAZIL                         Normal weight          1        2     221
0-24 months   MAL-ED           BRAZIL                         Underweight            0       10     221
0-24 months   MAL-ED           BRAZIL                         Underweight            1        0     221
0-24 months   MAL-ED           INDIA                          Normal weight          0      154     242
0-24 months   MAL-ED           INDIA                          Normal weight          1       39     242
0-24 months   MAL-ED           INDIA                          Underweight            0       35     242
0-24 months   MAL-ED           INDIA                          Underweight            1       14     242
0-24 months   MAL-ED           NEPAL                          Normal weight          0      216     238
0-24 months   MAL-ED           NEPAL                          Normal weight          1       22     238
0-24 months   MAL-ED           NEPAL                          Underweight            0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight            1        0     238
0-24 months   MAL-ED           PERU                           Normal weight          0      275     290
0-24 months   MAL-ED           PERU                           Normal weight          1       10     290
0-24 months   MAL-ED           PERU                           Underweight            0        3     290
0-24 months   MAL-ED           PERU                           Underweight            1        2     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      241     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1       21     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        8     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        0     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      222     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       20     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight          0      423     624
0-24 months   NIH-Birth        BANGLADESH                     Normal weight          1       97     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight            0       64     624
0-24 months   NIH-Birth        BANGLADESH                     Underweight            1       40     624
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      632     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight          1       55     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight            0       52     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight            1       16     755
0-24 months   PROBIT           BELARUS                        Normal weight          0    13191   13728
0-24 months   PROBIT           BELARUS                        Normal weight          1       14   13728
0-24 months   PROBIT           BELARUS                        Underweight            0      523   13728
0-24 months   PROBIT           BELARUS                        Underweight            1        0   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight          0      480     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight          1       62     669
0-24 months   PROVIDE          BANGLADESH                     Underweight            0       99     669
0-24 months   PROVIDE          BANGLADESH                     Underweight            1       28     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight          0      819    1390
0-24 months   SAS-CompFeed     INDIA                          Normal weight          1      200    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight            0      251    1390
0-24 months   SAS-CompFeed     INDIA                          Underweight            1      120    1390
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2195    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      112    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       35    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0     8868    9795
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1      411    9795
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight            0      467    9795
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight            1       49    9795
0-6 months    JiVitA-3         BANGLADESH                     Normal weight          0    15819   26696
0-6 months    JiVitA-3         BANGLADESH                     Normal weight          1      652   26696
0-6 months    JiVitA-3         BANGLADESH                     Underweight            0     9819   26696
0-6 months    JiVitA-3         BANGLADESH                     Underweight            1      406   26696
0-6 months    LCNI-5           MALAWI                         Normal weight          0      224     271
0-6 months    LCNI-5           MALAWI                         Normal weight          1        0     271
0-6 months    LCNI-5           MALAWI                         Underweight            0       47     271
0-6 months    LCNI-5           MALAWI                         Underweight            1        0     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight          0      215     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight          1        7     254
0-6 months    MAL-ED           BANGLADESH                     Underweight            0       30     254
0-6 months    MAL-ED           BANGLADESH                     Underweight            1        2     254
0-6 months    MAL-ED           BRAZIL                         Normal weight          0      211     221
0-6 months    MAL-ED           BRAZIL                         Normal weight          1        0     221
0-6 months    MAL-ED           BRAZIL                         Underweight            0       10     221
0-6 months    MAL-ED           BRAZIL                         Underweight            1        0     221
0-6 months    MAL-ED           INDIA                          Normal weight          0      180     242
0-6 months    MAL-ED           INDIA                          Normal weight          1       13     242
0-6 months    MAL-ED           INDIA                          Underweight            0       44     242
0-6 months    MAL-ED           INDIA                          Underweight            1        5     242
0-6 months    MAL-ED           NEPAL                          Normal weight          0      230     238
0-6 months    MAL-ED           NEPAL                          Normal weight          1        8     238
0-6 months    MAL-ED           NEPAL                          Underweight            0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight            1        0     238
0-6 months    MAL-ED           PERU                           Normal weight          0      283     290
0-6 months    MAL-ED           PERU                           Normal weight          1        2     290
0-6 months    MAL-ED           PERU                           Underweight            0        5     290
0-6 months    MAL-ED           PERU                           Underweight            1        0     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight          0      259     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight          1        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight            0        8     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight            1        0     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      238     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1        4     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight          0      488     622
0-6 months    NIH-Birth        BANGLADESH                     Normal weight          1       31     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight            0       89     622
0-6 months    NIH-Birth        BANGLADESH                     Underweight            1       14     622
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight          0      673     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight          1       14     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight            0       65     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight            1        3     755
0-6 months    PROBIT           BELARUS                        Normal weight          0    13196   13728
0-6 months    PROBIT           BELARUS                        Normal weight          1        9   13728
0-6 months    PROBIT           BELARUS                        Underweight            0      523   13728
0-6 months    PROBIT           BELARUS                        Underweight            1        0   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight          0      522     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight          1       20     669
0-6 months    PROVIDE          BANGLADESH                     Underweight            0      117     669
0-6 months    PROVIDE          BANGLADESH                     Underweight            1       10     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight          0      950    1382
0-6 months    SAS-CompFeed     INDIA                          Normal weight          1       64    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight            0      336    1382
0-6 months    SAS-CompFeed     INDIA                          Underweight            1       32    1382
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     2289    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       38    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight          0     9138    9756
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight          1      109    9756
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight            0      497    9756
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight            1       12    9756
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight          0     2453    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight          1      309    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight            0      377    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight            1       77    3216
6-24 months   JiVitA-3         BANGLADESH                     Normal weight          0     9700   17228
6-24 months   JiVitA-3         BANGLADESH                     Normal weight          1      916   17228
6-24 months   JiVitA-3         BANGLADESH                     Underweight            0     6031   17228
6-24 months   JiVitA-3         BANGLADESH                     Underweight            1      581   17228
6-24 months   LCNI-5           MALAWI                         Normal weight          0      657     823
6-24 months   LCNI-5           MALAWI                         Normal weight          1       27     823
6-24 months   LCNI-5           MALAWI                         Underweight            0      124     823
6-24 months   LCNI-5           MALAWI                         Underweight            1       15     823
6-24 months   MAL-ED           BANGLADESH                     Normal weight          0      184     239
6-24 months   MAL-ED           BANGLADESH                     Normal weight          1       24     239
6-24 months   MAL-ED           BANGLADESH                     Underweight            0       20     239
6-24 months   MAL-ED           BANGLADESH                     Underweight            1       11     239
6-24 months   MAL-ED           BRAZIL                         Normal weight          0      195     206
6-24 months   MAL-ED           BRAZIL                         Normal weight          1        2     206
6-24 months   MAL-ED           BRAZIL                         Underweight            0        9     206
6-24 months   MAL-ED           BRAZIL                         Underweight            1        0     206
6-24 months   MAL-ED           INDIA                          Normal weight          0      153     234
6-24 months   MAL-ED           INDIA                          Normal weight          1       33     234
6-24 months   MAL-ED           INDIA                          Underweight            0       34     234
6-24 months   MAL-ED           INDIA                          Underweight            1       14     234
6-24 months   MAL-ED           NEPAL                          Normal weight          0      219     235
6-24 months   MAL-ED           NEPAL                          Normal weight          1       16     235
6-24 months   MAL-ED           NEPAL                          Underweight            0        0     235
6-24 months   MAL-ED           NEPAL                          Underweight            1        0     235
6-24 months   MAL-ED           PERU                           Normal weight          0      255     269
6-24 months   MAL-ED           PERU                           Normal weight          1        9     269
6-24 months   MAL-ED           PERU                           Underweight            0        3     269
6-24 months   MAL-ED           PERU                           Underweight            1        2     269
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      227     254
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1       20     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        7     254
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        0     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      214     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       18     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       10     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     245
6-24 months   NIH-Birth        BANGLADESH                     Normal weight          0      371     542
6-24 months   NIH-Birth        BANGLADESH                     Normal weight          1       78     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight            0       57     542
6-24 months   NIH-Birth        BANGLADESH                     Underweight            1       36     542
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      615     730
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight          1       48     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight            0       52     730
6-24 months   NIH-Crypto       BANGLADESH                     Underweight            1       15     730
6-24 months   PROBIT           BELARUS                        Normal weight          0    13191   13720
6-24 months   PROBIT           BELARUS                        Normal weight          1        6   13720
6-24 months   PROBIT           BELARUS                        Underweight            0      523   13720
6-24 months   PROBIT           BELARUS                        Underweight            1        0   13720
6-24 months   PROVIDE          BANGLADESH                     Normal weight          0      455     613
6-24 months   PROVIDE          BANGLADESH                     Normal weight          1       50     613
6-24 months   PROVIDE          BANGLADESH                     Underweight            0       83     613
6-24 months   PROVIDE          BANGLADESH                     Underweight            1       25     613
6-24 months   SAS-CompFeed     INDIA                          Normal weight          0      758    1277
6-24 months   SAS-CompFeed     INDIA                          Normal weight          1      179    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight            0      231    1277
6-24 months   SAS-CompFeed     INDIA                          Underweight            1      109    1277
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1835    1971
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      106    1971
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       27    1971
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        3    1971
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0     7818    8595
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1      320    8595
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight            0      419    8595
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight            1       38    8595


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
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/60b1dad3-a953-47ae-8331-15861fbfc881/6ed8536a-ac45-4ac1-ad92-cb68f79e4002/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60b1dad3-a953-47ae-8331-15861fbfc881/6ed8536a-ac45-4ac1-ad92-cb68f79e4002/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60b1dad3-a953-47ae-8331-15861fbfc881/6ed8536a-ac45-4ac1-ad92-cb68f79e4002/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60b1dad3-a953-47ae-8331-15861fbfc881/6ed8536a-ac45-4ac1-ad92-cb68f79e4002/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1117109   0.0921108   0.1313110
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.1690655   0.1128650   0.2252660
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0886369   0.0838172   0.0934567
0-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0894720   0.0837867   0.0951572
0-24 months   LCNI-5         MALAWI         Normal weight        NA                0.0384735   0.0241686   0.0527784
0-24 months   LCNI-5         MALAWI         Underweight          NA                0.1076455   0.0534349   0.1618560
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.1281325   0.0841891   0.1720760
0-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.3707573   0.2047386   0.5367760
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.1996887   0.1426423   0.2567351
0-24 months   MAL-ED         INDIA          Underweight          NA                0.2504915   0.1174942   0.3834888
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1854023   0.1519128   0.2188918
0-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.3907756   0.2932127   0.4883386
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0806333   0.0602381   0.1010286
0-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.2195826   0.1192279   0.3199372
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.1160126   0.0892074   0.1428178
0-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.2172433   0.1437526   0.2907340
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1957197   0.1556530   0.2357864
0-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.3148068   0.2557379   0.3738757
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0442644   0.0400765   0.0484523
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0995665   0.0720965   0.1270366
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                0.0393335   0.0361890   0.0424779
0-6 months    JiVitA-3       BANGLADESH     Underweight          NA                0.0401090   0.0361760   0.0440420
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0673575   0.0319236   0.1027914
0-6 months    MAL-ED         INDIA          Underweight          NA                0.1020408   0.0171102   0.1869715
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.0597222   0.0393246   0.0801199
0-6 months    NIH-Birth      BANGLADESH     Underweight          NA                0.1411589   0.0743159   0.2080018
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0372512   0.0213284   0.0531740
0-6 months    PROVIDE        BANGLADESH     Underweight          NA                0.0746474   0.0298361   0.1194587
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0636861   0.0418558   0.0855164
0-6 months    SAS-CompFeed   INDIA          Underweight          NA                0.0848104   0.0364308   0.1331900
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0117880   0.0095873   0.0139886
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          NA                0.0233776   0.0100937   0.0366616
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.1118532   0.0921631   0.1315433
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          NA                0.1723625   0.1152722   0.2294527
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0862573   0.0803084   0.0922061
6-24 months   JiVitA-3       BANGLADESH     Underweight          NA                0.0880029   0.0812094   0.0947964
6-24 months   LCNI-5         MALAWI         Normal weight        NA                0.0387240   0.0243289   0.0531190
6-24 months   LCNI-5         MALAWI         Underweight          NA                0.1145648   0.0569277   0.1722018
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.1171843   0.0735874   0.1607812
6-24 months   MAL-ED         BANGLADESH     Underweight          NA                0.3859304   0.2104930   0.5613678
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.1799574   0.1247097   0.2352050
6-24 months   MAL-ED         INDIA          Underweight          NA                0.3177753   0.1930569   0.4424938
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1745896   0.1394459   0.2097332
6-24 months   NIH-Birth      BANGLADESH     Underweight          NA                0.3796342   0.2767212   0.4825472
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0729932   0.0531022   0.0928843
6-24 months   NIH-Crypto     BANGLADESH     Underweight          NA                0.1922376   0.0928283   0.2916468
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0998312   0.0738191   0.1258432
6-24 months   PROVIDE        BANGLADESH     Underweight          NA                0.2321470   0.1507135   0.3135805
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1918900   0.1528512   0.2309288
6-24 months   SAS-CompFeed   INDIA          Underweight          NA                0.3081543   0.2574336   0.3588750
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0392997   0.0350735   0.0435259
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          NA                0.0909073   0.0624212   0.1193933


### Parameter: E(Y)


agecat        studyid        country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0889453   0.0850200   0.0928705
0-24 months   LCNI-5         MALAWI         NA                   NA                0.0501792   0.0353804   0.0649781
0-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1535433   0.1091205   0.1979661
0-24 months   MAL-ED         INDIA          NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   PROVIDE        BANGLADESH     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2302158   0.1856981   0.2747335
0-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0469627   0.0427729   0.0511526
0-6 months    JiVitA-3       BANGLADESH     NA                   NA                0.0396314   0.0371179   0.0421449
0-6 months    MAL-ED         INDIA          NA                   NA                0.0743802   0.0412530   0.1075073
0-6 months    NIH-Birth      BANGLADESH     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    PROVIDE        BANGLADESH     NA                   NA                0.0448430   0.0291486   0.0605375
0-6 months    SAS-CompFeed   INDIA          NA                   NA                0.0694645   0.0441638   0.0947653
0-6 months    ZVITAMBO       ZIMBABWE       NA                   NA                0.0124026   0.0102064   0.0145989
6-24 months   iLiNS-Zinc     BURKINA FASO   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   JiVitA-3       BANGLADESH     NA                   NA                0.0868934   0.0822223   0.0915646
6-24 months   LCNI-5         MALAWI         NA                   NA                0.0510328   0.0359888   0.0660768
6-24 months   MAL-ED         BANGLADESH     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   MAL-ED         INDIA          NA                   NA                0.2008547   0.1494120   0.2522974
6-24 months   NIH-Birth      BANGLADESH     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto     BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE        BANGLADESH     NA                   NA                0.1223491   0.0963874   0.1483108
6-24 months   SAS-CompFeed   INDIA          NA                   NA                0.2255286   0.1871466   0.2639106
6-24 months   ZVITAMBO       ZIMBABWE       NA                   NA                0.0416521   0.0374281   0.0458762


### Parameter: RR


agecat        studyid        country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------  -------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.513421   1.0716384   2.137327
0-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.009421   0.9339532   1.090987
0-24 months   LCNI-5         MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   LCNI-5         MALAWI         Underweight          Normal weight     2.797912   1.4954337   5.234809
0-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     2.893545   1.6497227   5.075158
0-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.254410   0.6854175   2.295747
0-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.107717   1.5475989   2.870557
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.723224   1.6161977   4.588515
0-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     1.872584   1.2434734   2.819979
0-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     1.608457   1.4054582   1.840776
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     2.249359   1.6804487   3.010871
0-6 months    JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH     Underweight          Normal weight     1.019717   0.9013062   1.153684
0-6 months    MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA          Underweight          Normal weight     1.514914   0.5659383   4.055148
0-6 months    NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    NIH-Birth      BANGLADESH     Underweight          Normal weight     2.363590   1.3173830   4.240648
0-6 months    PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    PROVIDE        BANGLADESH     Underweight          Normal weight     2.003891   0.9600573   4.182645
0-6 months    SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    SAS-CompFeed   INDIA          Underweight          Normal weight     1.331693   0.8176205   2.168985
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
0-6 months    ZVITAMBO       ZIMBABWE       Underweight          Normal weight     1.983181   1.0904327   3.606832
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc     BURKINA FASO   Underweight          Normal weight     1.540970   1.0897758   2.178971
6-24 months   JiVitA-3       BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   JiVitA-3       BANGLADESH     Underweight          Normal weight     1.020238   0.9240151   1.126481
6-24 months   LCNI-5         MALAWI         Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   LCNI-5         MALAWI         Underweight          Normal weight     2.958496   1.5829448   5.529377
6-24 months   MAL-ED         BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH     Underweight          Normal weight     3.293363   1.8361313   5.907114
6-24 months   MAL-ED         INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   MAL-ED         INDIA          Underweight          Normal weight     1.765837   1.0740830   2.903109
6-24 months   NIH-Birth      BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Birth      BANGLADESH     Underweight          Normal weight     2.174438   1.5503209   3.049808
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   NIH-Crypto     BANGLADESH     Underweight          Normal weight     2.633635   1.4688097   4.722215
6-24 months   PROVIDE        BANGLADESH     Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH     Underweight          Normal weight     2.325396   1.5038693   3.595703
6-24 months   SAS-CompFeed   INDIA          Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA          Underweight          Normal weight     1.605890   1.3394394   1.925345
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        Normal weight     1.000000   1.0000000   1.000000
6-24 months   ZVITAMBO       ZIMBABWE       Underweight          Normal weight     2.313181   1.6610243   3.221389


### Parameter: PAR


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0083140    0.0005210   0.0161070
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0003083   -0.0023318   0.0029484
0-24 months   LCNI-5         MALAWI         Normal weight        NA                0.0117057    0.0026077   0.0208038
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0254108    0.0022477   0.0485738
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0193196   -0.0095495   0.0481887
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0341490    0.0164240   0.0518739
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0134064    0.0036470   0.0231659
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0185166    0.0035783   0.0334548
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0344961    0.0223587   0.0466334
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0026983    0.0013305   0.0040661
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                0.0002979   -0.0015838   0.0021797
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0070227   -0.0116936   0.0257389
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.0126250    0.0009320   0.0243180
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.0075918   -0.0019225   0.0171062
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0057784   -0.0048546   0.0164114
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0006147   -0.0000848   0.0013142
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0081717    0.0003314   0.0160120
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0006362   -0.0026862   0.0039586
6-24 months   LCNI-5         MALAWI         Normal weight        NA                0.0123088    0.0031064   0.0215113
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.0292592    0.0049821   0.0535363
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.0208973   -0.0089665   0.0507612
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.0357426    0.0163911   0.0550940
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.0133081    0.0034233   0.0231930
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.0225179    0.0073311   0.0377048
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.0336386    0.0214938   0.0457833
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0023524    0.0009729   0.0037320


### Parameter: PAF


agecat        studyid        country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0692691    0.0040686   0.1302012
0-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0034665   -0.0266693   0.0327177
0-24 months   LCNI-5         MALAWI         Normal weight        NA                0.2332781    0.0440375   0.3850569
0-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.1654957    0.0072933   0.2984863
0-24 months   MAL-ED         INDIA          Normal weight        NA                0.0882139   -0.0530835   0.2105527
0-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1555398    0.0727058   0.2309744
0-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.1425612    0.0368297   0.2366861
0-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.1376397    0.0223643   0.2393227
0-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1498424    0.1023206   0.1948484
0-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0574567    0.0282850   0.0857526
0-6 months    JiVitA-3       BANGLADESH     Normal weight        NA                0.0075177   -0.0411225   0.0538854
0-6 months    MAL-ED         INDIA          Normal weight        NA                0.0944157   -0.1916684   0.3118195
0-6 months    NIH-Birth      BANGLADESH     Normal weight        NA                0.1745060    0.0040603   0.3157815
0-6 months    PROVIDE        BANGLADESH     Normal weight        NA                0.1692977   -0.0616132   0.3499833
0-6 months    SAS-CompFeed   INDIA          Normal weight        NA                0.0831849   -0.0679859   0.2129578
0-6 months    ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0495599   -0.0078429   0.1036933
6-24 months   iLiNS-Zinc     BURKINA FASO   Normal weight        NA                0.0680832    0.0023234   0.1295085
6-24 months   JiVitA-3       BANGLADESH     Normal weight        NA                0.0073214   -0.0316951   0.0448623
6-24 months   LCNI-5         MALAWI         Normal weight        NA                0.2411943    0.0541263   0.3912654
6-24 months   MAL-ED         BANGLADESH     Normal weight        NA                0.1997986    0.0263024   0.3423807
6-24 months   MAL-ED         INDIA          Normal weight        NA                0.1040421   -0.0555236   0.2394859
6-24 months   NIH-Birth      BANGLADESH     Normal weight        NA                0.1699339    0.0754313   0.2547771
6-24 months   NIH-Crypto     BANGLADESH     Normal weight        NA                0.1542053    0.0371908   0.2569986
6-24 months   PROVIDE        BANGLADESH     Normal weight        NA                0.1840466    0.0560860   0.2946605
6-24 months   SAS-CompFeed   INDIA          Normal weight        NA                0.1491543    0.0900913   0.2043834
6-24 months   ZVITAMBO       ZIMBABWE       Normal weight        NA                0.0564784    0.0232197   0.0886048
