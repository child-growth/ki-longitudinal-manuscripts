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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mwtkg         pers_wast   n_cell       n
------------  ---------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      455    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                0      514    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      483    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       59    1645
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg               0      372   15795
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg               1       17   15795
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                0    13489   15795
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                1      827   15795
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg            0     1037   15795
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg            1       53   15795
0-24 months   LCNI-5           MALAWI                         >=58 kg               0       96     717
0-24 months   LCNI-5           MALAWI                         >=58 kg               1        1     717
0-24 months   LCNI-5           MALAWI                         <52 kg                0      426     717
0-24 months   LCNI-5           MALAWI                         <52 kg                1        3     717
0-24 months   LCNI-5           MALAWI                         [52-58) kg            0      189     717
0-24 months   LCNI-5           MALAWI                         [52-58) kg            1        2     717
0-24 months   MAL-ED           BANGLADESH                     >=58 kg               0       45     248
0-24 months   MAL-ED           BANGLADESH                     >=58 kg               1        2     248
0-24 months   MAL-ED           BANGLADESH                     <52 kg                0      149     248
0-24 months   MAL-ED           BANGLADESH                     <52 kg                1        9     248
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg            0       41     248
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg            1        2     248
0-24 months   MAL-ED           BRAZIL                         >=58 kg               0      139     216
0-24 months   MAL-ED           BRAZIL                         >=58 kg               1        1     216
0-24 months   MAL-ED           BRAZIL                         <52 kg                0       40     216
0-24 months   MAL-ED           BRAZIL                         <52 kg                1        0     216
0-24 months   MAL-ED           BRAZIL                         [52-58) kg            0       35     216
0-24 months   MAL-ED           BRAZIL                         [52-58) kg            1        1     216
0-24 months   MAL-ED           INDIA                          >=58 kg               0       39     240
0-24 months   MAL-ED           INDIA                          >=58 kg               1        2     240
0-24 months   MAL-ED           INDIA                          <52 kg                0      132     240
0-24 months   MAL-ED           INDIA                          <52 kg                1       17     240
0-24 months   MAL-ED           INDIA                          [52-58) kg            0       48     240
0-24 months   MAL-ED           INDIA                          [52-58) kg            1        2     240
0-24 months   MAL-ED           NEPAL                          >=58 kg               0       80     238
0-24 months   MAL-ED           NEPAL                          >=58 kg               1        0     238
0-24 months   MAL-ED           NEPAL                          <52 kg                0       73     238
0-24 months   MAL-ED           NEPAL                          <52 kg                1        3     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg            0       81     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg            1        1     238
0-24 months   MAL-ED           PERU                           >=58 kg               0      103     283
0-24 months   MAL-ED           PERU                           >=58 kg               1        0     283
0-24 months   MAL-ED           PERU                           <52 kg                0      110     283
0-24 months   MAL-ED           PERU                           <52 kg                1        1     283
0-24 months   MAL-ED           PERU                           [52-58) kg            0       69     283
0-24 months   MAL-ED           PERU                           [52-58) kg            1        0     283
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg               0      190     266
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg               1        1     266
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                0       30     266
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                1        0     266
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg            0       44     266
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg            1        1     266
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                0      340     534
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                1       44     534
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg               0      188     730
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg               1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                0      366     730
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                1       25     730
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg            0      150     730
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg            1        1     730
0-24 months   PROBIT           BELARUS                        >=58 kg               0    10184   13758
0-24 months   PROBIT           BELARUS                        >=58 kg               1       83   13758
0-24 months   PROBIT           BELARUS                        <52 kg                0     1126   13758
0-24 months   PROBIT           BELARUS                        <52 kg                1        4   13758
0-24 months   PROBIT           BELARUS                        [52-58) kg            0     2352   13758
0-24 months   PROBIT           BELARUS                        [52-58) kg            1        9   13758
0-24 months   PROVIDE          BANGLADESH                     >=58 kg               0      117     640
0-24 months   PROVIDE          BANGLADESH                     >=58 kg               1        0     640
0-24 months   PROVIDE          BANGLADESH                     <52 kg                0      397     640
0-24 months   PROVIDE          BANGLADESH                     <52 kg                1       14     640
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg            0      111     640
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg            1        1     640
0-24 months   SAS-CompFeed     INDIA                          >=58 kg               0      102    1360
0-24 months   SAS-CompFeed     INDIA                          >=58 kg               1        2    1360
0-24 months   SAS-CompFeed     INDIA                          <52 kg                0      935    1360
0-24 months   SAS-CompFeed     INDIA                          <52 kg                1      101    1360
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg            0      210    1360
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg            1       10    1360
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311    2126
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31    2126
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334    2126
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13    2126
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424    2126
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13    2126
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg               0     4693    9147
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9147
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                0     1916    9147
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9147
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2377    9147
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9147
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg               0        1      50
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg               1        0      50
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                0       41      50
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                1        2      50
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg            0        6      50
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg            1        0      50
0-6 months    MAL-ED           BANGLADESH                     >=58 kg               0       45     248
0-6 months    MAL-ED           BANGLADESH                     >=58 kg               1        2     248
0-6 months    MAL-ED           BANGLADESH                     <52 kg                0      153     248
0-6 months    MAL-ED           BANGLADESH                     <52 kg                1        5     248
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg            0       43     248
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg            1        0     248
0-6 months    MAL-ED           BRAZIL                         >=58 kg               0      139     216
0-6 months    MAL-ED           BRAZIL                         >=58 kg               1        1     216
0-6 months    MAL-ED           BRAZIL                         <52 kg                0       40     216
0-6 months    MAL-ED           BRAZIL                         <52 kg                1        0     216
0-6 months    MAL-ED           BRAZIL                         [52-58) kg            0       36     216
0-6 months    MAL-ED           BRAZIL                         [52-58) kg            1        0     216
0-6 months    MAL-ED           INDIA                          >=58 kg               0       38     239
0-6 months    MAL-ED           INDIA                          >=58 kg               1        2     239
0-6 months    MAL-ED           INDIA                          <52 kg                0      135     239
0-6 months    MAL-ED           INDIA                          <52 kg                1       14     239
0-6 months    MAL-ED           INDIA                          [52-58) kg            0       47     239
0-6 months    MAL-ED           INDIA                          [52-58) kg            1        3     239
0-6 months    MAL-ED           NEPAL                          >=58 kg               0       80     238
0-6 months    MAL-ED           NEPAL                          >=58 kg               1        0     238
0-6 months    MAL-ED           NEPAL                          <52 kg                0       71     238
0-6 months    MAL-ED           NEPAL                          <52 kg                1        5     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg            0       80     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg            1        2     238
0-6 months    MAL-ED           PERU                           >=58 kg               0      103     283
0-6 months    MAL-ED           PERU                           >=58 kg               1        0     283
0-6 months    MAL-ED           PERU                           <52 kg                0      111     283
0-6 months    MAL-ED           PERU                           <52 kg                1        0     283
0-6 months    MAL-ED           PERU                           [52-58) kg            0       69     283
0-6 months    MAL-ED           PERU                           [52-58) kg            1        0     283
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg               0      190     265
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg               1        1     265
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                0       29     265
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                1        1     265
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg            0       44     265
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg            1        0     265
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg               0       14     169
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg               1        2     169
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                0      124     169
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                1        8     169
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg            0       20     169
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg            1        1     169
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg               0       64     250
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg               1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                0      126     250
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                1        4     250
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg            0       55     250
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg            1        1     250
0-6 months    PROBIT           BELARUS                        >=58 kg               0     9036   13194
0-6 months    PROBIT           BELARUS                        >=58 kg               1      818   13194
0-6 months    PROBIT           BELARUS                        <52 kg                0     1005   13194
0-6 months    PROBIT           BELARUS                        <52 kg                1       78   13194
0-6 months    PROBIT           BELARUS                        [52-58) kg            0     2078   13194
0-6 months    PROBIT           BELARUS                        [52-58) kg            1      179   13194
0-6 months    PROVIDE          BANGLADESH                     >=58 kg               0      115     637
0-6 months    PROVIDE          BANGLADESH                     >=58 kg               1        1     637
0-6 months    PROVIDE          BANGLADESH                     <52 kg                0      399     637
0-6 months    PROVIDE          BANGLADESH                     <52 kg                1       11     637
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg            0      109     637
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg            1        2     637
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1258    2022
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       27    2022
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      314    2022
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1        9    2022
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      399    2022
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       15    2022
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg               0      329     631
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg               1        8     631
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                0      124     631
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                1        2     631
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg            0      164     631
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg            1        4     631
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      455    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                0      514    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      483    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       59    1645
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg               0      372   15795
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg               1       17   15795
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                0    13489   15795
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                1      827   15795
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg            0     1037   15795
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg            1       53   15795
6-24 months   LCNI-5           MALAWI                         >=58 kg               0       96     717
6-24 months   LCNI-5           MALAWI                         >=58 kg               1        1     717
6-24 months   LCNI-5           MALAWI                         <52 kg                0      426     717
6-24 months   LCNI-5           MALAWI                         <52 kg                1        3     717
6-24 months   LCNI-5           MALAWI                         [52-58) kg            0      189     717
6-24 months   LCNI-5           MALAWI                         [52-58) kg            1        2     717
6-24 months   MAL-ED           BANGLADESH                     >=58 kg               0       45     248
6-24 months   MAL-ED           BANGLADESH                     >=58 kg               1        2     248
6-24 months   MAL-ED           BANGLADESH                     <52 kg                0      149     248
6-24 months   MAL-ED           BANGLADESH                     <52 kg                1        9     248
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg            0       41     248
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg            1        2     248
6-24 months   MAL-ED           BRAZIL                         >=58 kg               0      139     216
6-24 months   MAL-ED           BRAZIL                         >=58 kg               1        1     216
6-24 months   MAL-ED           BRAZIL                         <52 kg                0       40     216
6-24 months   MAL-ED           BRAZIL                         <52 kg                1        0     216
6-24 months   MAL-ED           BRAZIL                         [52-58) kg            0       35     216
6-24 months   MAL-ED           BRAZIL                         [52-58) kg            1        1     216
6-24 months   MAL-ED           INDIA                          >=58 kg               0       39     240
6-24 months   MAL-ED           INDIA                          >=58 kg               1        2     240
6-24 months   MAL-ED           INDIA                          <52 kg                0      132     240
6-24 months   MAL-ED           INDIA                          <52 kg                1       17     240
6-24 months   MAL-ED           INDIA                          [52-58) kg            0       48     240
6-24 months   MAL-ED           INDIA                          [52-58) kg            1        2     240
6-24 months   MAL-ED           NEPAL                          >=58 kg               0       80     238
6-24 months   MAL-ED           NEPAL                          >=58 kg               1        0     238
6-24 months   MAL-ED           NEPAL                          <52 kg                0       73     238
6-24 months   MAL-ED           NEPAL                          <52 kg                1        3     238
6-24 months   MAL-ED           NEPAL                          [52-58) kg            0       81     238
6-24 months   MAL-ED           NEPAL                          [52-58) kg            1        1     238
6-24 months   MAL-ED           PERU                           >=58 kg               0      103     283
6-24 months   MAL-ED           PERU                           >=58 kg               1        0     283
6-24 months   MAL-ED           PERU                           <52 kg                0      110     283
6-24 months   MAL-ED           PERU                           <52 kg                1        1     283
6-24 months   MAL-ED           PERU                           [52-58) kg            0       69     283
6-24 months   MAL-ED           PERU                           [52-58) kg            1        0     283
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg               0      190     266
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg               1        1     266
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                0       30     266
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                1        0     266
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg            0       44     266
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg            1        1     266
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                0      340     534
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                1       44     534
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg               0      188     730
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg               1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                0      366     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                1       25     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg            0      150     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg            1        1     730
6-24 months   PROBIT           BELARUS                        >=58 kg               0    10184   13758
6-24 months   PROBIT           BELARUS                        >=58 kg               1       83   13758
6-24 months   PROBIT           BELARUS                        <52 kg                0     1126   13758
6-24 months   PROBIT           BELARUS                        <52 kg                1        4   13758
6-24 months   PROBIT           BELARUS                        [52-58) kg            0     2352   13758
6-24 months   PROBIT           BELARUS                        [52-58) kg            1        9   13758
6-24 months   PROVIDE          BANGLADESH                     >=58 kg               0      117     640
6-24 months   PROVIDE          BANGLADESH                     >=58 kg               1        0     640
6-24 months   PROVIDE          BANGLADESH                     <52 kg                0      397     640
6-24 months   PROVIDE          BANGLADESH                     <52 kg                1       14     640
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg            0      111     640
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg            1        1     640
6-24 months   SAS-CompFeed     INDIA                          >=58 kg               0      102    1360
6-24 months   SAS-CompFeed     INDIA                          >=58 kg               1        2    1360
6-24 months   SAS-CompFeed     INDIA                          <52 kg                0      935    1360
6-24 months   SAS-CompFeed     INDIA                          <52 kg                1      101    1360
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg            0      210    1360
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg            1       10    1360
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311    2126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31    2126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334    2126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13    2126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424    2126
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13    2126
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg               0     4693    9147
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9147
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                0     1916    9147
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9147
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2377    9147
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9147


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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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




# Results Detail

## Results Plots
![](/tmp/7c0e7965-7e51-4f39-9a1d-2d79402671d4/20652da7-97f1-4e93-9cea-b71008e6474b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c0e7965-7e51-4f39-9a1d-2d79402671d4/20652da7-97f1-4e93-9cea-b71008e6474b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c0e7965-7e51-4f39-9a1d-2d79402671d4/20652da7-97f1-4e93-9cea-b71008e6474b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c0e7965-7e51-4f39-9a1d-2d79402671d4/20652da7-97f1-4e93-9cea-b71008e6474b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0633793   0.0404214   0.0863372
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1678256   0.1233287   0.2123225
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1101553   0.0714824   0.1488281
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0444684   0.0223748   0.0665619
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0577951   0.0535042   0.0620859
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0493130   0.0359331   0.0626929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0231700   0.0151255   0.0312144
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0378490   0.0181229   0.0575752
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0309542   0.0148373   0.0470710
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0121082   0.0089562   0.0152602
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0319181   0.0240680   0.0397682
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0178862   0.0123111   0.0234614
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0826987   0.0555343   0.1098630
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0707499   0.0444902   0.0970097
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0767527   0.0524249   0.1010806
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0630660   0.0398442   0.0862878
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1693258   0.1232887   0.2153628
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1095832   0.0706177   0.1485487
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0428618   0.0213200   0.0644035
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0577934   0.0535016   0.0620851
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0488410   0.0355329   0.0621491
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0231022   0.0150623   0.0311420
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0382899   0.0181157   0.0584640
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297717   0.0138336   0.0457099
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0119645   0.0088488   0.0150802
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0321360   0.0241838   0.0400881
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0179093   0.0123272   0.0234915


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567901   0.0526750   0.0609052
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0814764   0.0558603   0.1070926
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567901   0.0526750   0.0609052
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.6479566   1.7941151   3.908152
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.7380328   1.1215572   2.693360
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.2996896   0.7862392   2.148447
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.1089461   0.6302207   1.951319
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6335380   0.8730320   3.056527
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3359614   0.7146259   2.497521
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6360686   1.8425315   3.771364
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4771982   0.9841046   2.217360
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           0.8555146   0.6236578   1.173569
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9281010   0.7695672   1.119293
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.6848989   1.8025905   3.999068
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.7375964   1.1218217   2.691373
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.3483662   0.8110820   2.241563
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.1394993   0.6439524   2.016389
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6574135   0.8813459   3.116846
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2886981   0.6804738   2.440568
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6859461   1.8753442   3.846924
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4968742   0.9971519   2.247032


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0539459    0.0321673   0.0757246
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0123218   -0.0095997   0.0342433
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0036409   -0.0018598   0.0091417
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0054932    0.0028191   0.0081672
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0012222   -0.0049490   0.0025045
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0042109   -0.0012717   0.0096935
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0542592    0.0326072   0.0759113
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0139284   -0.0074496   0.0353063
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037087   -0.0017920   0.0092094
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056369    0.0029859   0.0082879


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4597983    0.2768940   0.5964384
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.2169704   -0.2811406   0.5214144
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1358008   -0.0920678   0.3161229
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3120877    0.1514092   0.4423421
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0150012   -0.0602662   0.0283314
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1669490   -0.0755193   0.3547544
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4624687    0.2785948   0.5994762
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.2452601   -0.2418621   0.5413079
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1383289   -0.0895758   0.3185632
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3202536    0.1615219   0.4489358
