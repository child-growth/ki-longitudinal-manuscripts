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

unadjusted

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
0-24 months   SAS-CompFeed     INDIA                          >=58 kg               0       97    1359
0-24 months   SAS-CompFeed     INDIA                          >=58 kg               1        3    1359
0-24 months   SAS-CompFeed     INDIA                          <52 kg                0      942    1359
0-24 months   SAS-CompFeed     INDIA                          <52 kg                1      101    1359
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg            0      207    1359
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg            1        9    1359
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
6-24 months   SAS-CompFeed     INDIA                          >=58 kg               0       97    1359
6-24 months   SAS-CompFeed     INDIA                          >=58 kg               1        3    1359
6-24 months   SAS-CompFeed     INDIA                          <52 kg                0      942    1359
6-24 months   SAS-CompFeed     INDIA                          <52 kg                1      101    1359
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg            0      207    1359
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg            1        9    1359
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
![](/tmp/8ea04b34-8e0b-4847-9010-8f42617e6589/01375a0e-1c4b-4846-adaa-2e442bacb3f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ea04b34-8e0b-4847-9010-8f42617e6589/01375a0e-1c4b-4846-adaa-2e442bacb3f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ea04b34-8e0b-4847-9010-8f42617e6589/01375a0e-1c4b-4846-adaa-2e442bacb3f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ea04b34-8e0b-4847-9010-8f42617e6589/01375a0e-1c4b-4846-adaa-2e442bacb3f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0657084   0.0388319   0.0925850
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1655844   0.1226418   0.2085270
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1088561   0.0709665   0.1467457
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230999   0.0150608   0.0311389
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374640   0.0174791   0.0574488
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297483   0.0138158   0.0456807
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0120000   0.0089033   0.0150967
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0318343   0.0240991   0.0395695
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0169562   0.0118099   0.0221024
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0830120   0.0557241   0.1102998
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0720222   0.0442158   0.0998285
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0793088   0.0534692   0.1051485
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0657084   0.0388319   0.0925850
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1655844   0.1226418   0.2085270
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1088561   0.0709665   0.1467457
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230999   0.0150608   0.0311389
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374640   0.0174791   0.0574488
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297483   0.0138158   0.0456807
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0120000   0.0089033   0.0150967
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0318343   0.0240991   0.0395695
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0169562   0.0118099   0.0221024


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0814764   0.0558603   0.1070926
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5199878   1.6184783   3.923648
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6566536   1.0260899   2.674718
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6218276   0.8578117   3.066320
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2878128   0.6799287   2.439170
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6528550   1.8611384   3.781363
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4130135   0.9487052   2.104560
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           0.8676117   0.6250339   1.204335
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9553901   0.7879097   1.158471
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5199878   1.6184783   3.923648
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6566536   1.0260899   2.674718
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6218276   0.8578117   3.066320
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2878128   0.6799287   2.439170
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.6528550   1.8611384   3.781363
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4130135   0.9487052   2.104560


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0516168    0.0291848   0.0740488
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037111   -0.0017849   0.0092070
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056014    0.0029760   0.0082268
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0015355   -0.0052437   0.0021727
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0042109   -0.0012717   0.0096935
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0516168    0.0291848   0.0740488
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037111   -0.0017849   0.0092070
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056014    0.0029760   0.0082268


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4399464    0.2282398   0.5935784
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1384161   -0.0892892   0.3185218
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3182360    0.1613740   0.4457575
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0188465   -0.0633149   0.0237622
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1669490   -0.0755193   0.3547544
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4399464    0.2282398   0.5935784
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1384161   -0.0892892   0.3185218
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3182360    0.1613740   0.4457575
