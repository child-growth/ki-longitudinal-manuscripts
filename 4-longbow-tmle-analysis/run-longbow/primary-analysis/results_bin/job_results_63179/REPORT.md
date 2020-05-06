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

agecat        studyid          country                        mbmi             ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  --------------  -------------  -------  ------  -----------------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               0     8183   27105  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Normal weight               1     8539   27105  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     5491   27105  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Underweight                 1     4892   27105  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Normal weight               0      259     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Normal weight               1      433     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Underweight                 0       46     837  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Underweight                 1       99     837  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Normal weight               0       89     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Normal weight               1      133     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Underweight                 0        9     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Underweight                 1       23     254  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Normal weight               0      158     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Normal weight               1       53     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Underweight                 0        6     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Underweight                 1        4     221  ever_stunted     
0-24 months   MAL-ED           INDIA                          Normal weight               0       74     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          Normal weight               1      119     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          Underweight                 0       19     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          Underweight                 1       30     242  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Normal weight               0      155     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Normal weight               1       83     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Underweight                 0        0     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Underweight                 1        0     238  ever_stunted     
0-24 months   MAL-ED           PERU                           Normal weight               0      102     290  ever_stunted     
0-24 months   MAL-ED           PERU                           Normal weight               1      183     290  ever_stunted     
0-24 months   MAL-ED           PERU                           Underweight                 0        2     290  ever_stunted     
0-24 months   MAL-ED           PERU                           Underweight                 1        3     290  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0      107     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1      155     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        1     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        7     270  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0       32     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      210     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        3     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1       11     256  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      190     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Normal weight               1      333     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       21     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       85     629  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      365     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1      322     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       28     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1       40     755  ever_stunted     
0-24 months   PROBIT           BELARUS                        Normal weight               0    11530   13728  ever_stunted     
0-24 months   PROBIT           BELARUS                        Normal weight               1     1675   13728  ever_stunted     
0-24 months   PROBIT           BELARUS                        Underweight                 0      434   13728  ever_stunted     
0-24 months   PROBIT           BELARUS                        Underweight                 1       89   13728  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Normal weight               0      305     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Normal weight               1      237     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Underweight                 0       61     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Underweight                 1       66     669  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Normal weight               0      353    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Normal weight               1      675    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Underweight                 0       88    1407  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Underweight                 1      291    1407  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1511    2345  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      796    2345  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       24    2345  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1       14    2345  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     5091    9819  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1     4211    9819  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      222    9819  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1      295    9819  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               0     9578   27039  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Normal weight               1     7109   27039  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 0     6293   27039  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Underweight                 1     4059   27039  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Normal weight               0      143     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Normal weight               1       81     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Underweight                 0       31     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Underweight                 1       16     271  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Normal weight               0      147     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Normal weight               1       75     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Underweight                 0       18     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Underweight                 1       14     254  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Normal weight               0      168     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Normal weight               1       43     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Underweight                 0        7     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Underweight                 1        3     221  ever_stunted     
0-6 months    MAL-ED           INDIA                          Normal weight               0      128     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          Normal weight               1       65     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          Underweight                 0       30     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          Underweight                 1       19     242  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Normal weight               0      196     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Normal weight               1       42     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Underweight                 0        0     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Underweight                 1        0     238  ever_stunted     
0-6 months    MAL-ED           PERU                           Normal weight               0      160     290  ever_stunted     
0-6 months    MAL-ED           PERU                           Normal weight               1      125     290  ever_stunted     
0-6 months    MAL-ED           PERU                           Underweight                 0        2     290  ever_stunted     
0-6 months    MAL-ED           PERU                           Underweight                 1        3     290  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               0      163     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight               1       99     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 0        3     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                 1        5     270  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0      142     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      100     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        6     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        8     256  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               0      353     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Normal weight               1      170     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 0       56     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Underweight                 1       50     629  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               0      485     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight               1      202     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 0       41     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                 1       27     755  ever_stunted     
0-6 months    PROBIT           BELARUS                        Normal weight               0    12359   13728  ever_stunted     
0-6 months    PROBIT           BELARUS                        Normal weight               1      846   13728  ever_stunted     
0-6 months    PROBIT           BELARUS                        Underweight                 0      468   13728  ever_stunted     
0-6 months    PROBIT           BELARUS                        Underweight                 1       55   13728  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Normal weight               0      414     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Normal weight               1      128     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Underweight                 0       89     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Underweight                 1       38     669  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Normal weight               0      618    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Normal weight               1      407    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Underweight                 0      187    1404  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Underweight                 1      192    1404  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1864    2345  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      443    2345  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       29    2345  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        9    2345  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               0     6669    9808  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight               1     2622    9808  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 0      325    9808  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                 1      192    9808  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               0     1803    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight               1      959    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 0      266    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                 1      188    3216  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               0     4822   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Normal weight               1     1430   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 0     3375   10460  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Underweight                 1      833   10460  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Normal weight               0      252     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Normal weight               1      352     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Underweight                 0       40     727  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Underweight                 1       83     727  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Normal weight               0       83     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Normal weight               1       58     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Underweight                 0        8     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Underweight                 1        9     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Normal weight               0      147     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Normal weight               1       10     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Underweight                 0        5     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Underweight                 1        1     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          Normal weight               0       70     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Normal weight               1       54     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Underweight                 0       19     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Underweight                 1       11     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Normal weight               0      153     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Normal weight               1       41     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Underweight                 0        0     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Underweight                 1        0     194  ever_stunted     
6-24 months   MAL-ED           PERU                           Normal weight               0       88     148  ever_stunted     
6-24 months   MAL-ED           PERU                           Normal weight               1       58     148  ever_stunted     
6-24 months   MAL-ED           PERU                           Underweight                 0        2     148  ever_stunted     
6-24 months   MAL-ED           PERU                           Underweight                 1        0     148  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               0       97     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Normal weight               1       56     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 0        0     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Underweight                 1        2     155  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               0       29     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight               1      110     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 0        2     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                 1        3     144  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               0      133     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Normal weight               1      163     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 0       14     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Underweight                 1       35     345  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               0      345     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Normal weight               1      120     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 0       28     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Underweight                 1       13     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        Normal weight               0    11522   12819  ever_stunted     
6-24 months   PROBIT           BELARUS                        Normal weight               1      829   12819  ever_stunted     
6-24 months   PROBIT           BELARUS                        Underweight                 0      434   12819  ever_stunted     
6-24 months   PROBIT           BELARUS                        Underweight                 1       34   12819  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Normal weight               0      275     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Normal weight               1      109     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Underweight                 0       44     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Underweight                 1       28     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Normal weight               0      304     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Normal weight               1      268     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Underweight                 0       72     743  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Underweight                 1       99     743  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               0     1193    1570  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1      353    1570  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       19    1570  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 1        5    1570  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               0     4582    6470  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Normal weight               1     1589    6470  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 0      196    6470  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Underweight                 1      103    6470  ever_stunted     


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
