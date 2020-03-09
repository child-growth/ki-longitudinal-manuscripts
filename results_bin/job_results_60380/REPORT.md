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

**Intervention Variable:** mwtkg

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

agecat        studyid          country                        mwtkg         wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      173    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        9    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      344    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      242    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    794
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 0       93   7562
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 1       76   7562
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                  0     4003   7562
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                  1     2902   7562
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              0      272   7562
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              1      216   7562
0-24 months   LCNI-5           MALAWI                         >=58 kg                 0        5     78
0-24 months   LCNI-5           MALAWI                         >=58 kg                 1        1     78
0-24 months   LCNI-5           MALAWI                         <52 kg                  0       47     78
0-24 months   LCNI-5           MALAWI                         <52 kg                  1       10     78
0-24 months   LCNI-5           MALAWI                         [52-58) kg              0       13     78
0-24 months   LCNI-5           MALAWI                         [52-58) kg              1        2     78
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                 0        3    122
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                 1        9    122
0-24 months   MAL-ED           BANGLADESH                     <52 kg                  0       35    122
0-24 months   MAL-ED           BANGLADESH                     <52 kg                  1       59    122
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg              0        5    122
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg              1       11    122
0-24 months   MAL-ED           BRAZIL                         >=58 kg                 0        4     23
0-24 months   MAL-ED           BRAZIL                         >=58 kg                 1        8     23
0-24 months   MAL-ED           BRAZIL                         <52 kg                  0        0     23
0-24 months   MAL-ED           BRAZIL                         <52 kg                  1        2     23
0-24 months   MAL-ED           BRAZIL                         [52-58) kg              0        2     23
0-24 months   MAL-ED           BRAZIL                         [52-58) kg              1        7     23
0-24 months   MAL-ED           INDIA                          >=58 kg                 0        5    178
0-24 months   MAL-ED           INDIA                          >=58 kg                 1        9    178
0-24 months   MAL-ED           INDIA                          <52 kg                  0       54    178
0-24 months   MAL-ED           INDIA                          <52 kg                  1       81    178
0-24 months   MAL-ED           INDIA                          [52-58) kg              0       11    178
0-24 months   MAL-ED           INDIA                          [52-58) kg              1       18    178
0-24 months   MAL-ED           NEPAL                          >=58 kg                 0        2     98
0-24 months   MAL-ED           NEPAL                          >=58 kg                 1       16     98
0-24 months   MAL-ED           NEPAL                          <52 kg                  0       13     98
0-24 months   MAL-ED           NEPAL                          <52 kg                  1       38     98
0-24 months   MAL-ED           NEPAL                          [52-58) kg              0        5     98
0-24 months   MAL-ED           NEPAL                          [52-58) kg              1       24     98
0-24 months   MAL-ED           PERU                           >=58 kg                 0        1     35
0-24 months   MAL-ED           PERU                           >=58 kg                 1        8     35
0-24 months   MAL-ED           PERU                           <52 kg                  0        5     35
0-24 months   MAL-ED           PERU                           <52 kg                  1       15     35
0-24 months   MAL-ED           PERU                           [52-58) kg              0        0     35
0-24 months   MAL-ED           PERU                           [52-58) kg              1        6     35
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 0        6     80
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 1       45     80
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  0        1     80
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  1        8     80
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              0        7     80
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              1       13     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1       10     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        6     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       24     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        8     51
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 0       17    421
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 1       24    421
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                  0      161    421
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                  1      165    421
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              0       24    421
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              1       30    421
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 0       16    309
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 1       34    309
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  0       86    309
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  1      125    309
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              0       14    309
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              1       34    309
0-24 months   PROBIT           BELARUS                        >=58 kg                 0      323   3952
0-24 months   PROBIT           BELARUS                        >=58 kg                 1     2576   3952
0-24 months   PROBIT           BELARUS                        <52 kg                  0       34   3952
0-24 months   PROBIT           BELARUS                        <52 kg                  1      307   3952
0-24 months   PROBIT           BELARUS                        [52-58) kg              0       67   3952
0-24 months   PROBIT           BELARUS                        [52-58) kg              1      645   3952
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                 0       10    303
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                 1       25    303
0-24 months   PROVIDE          BANGLADESH                     <52 kg                  0      100    303
0-24 months   PROVIDE          BANGLADESH                     <52 kg                  1      124    303
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg              0       15    303
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg              1       29    303
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                 0       15    810
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                 1       17    810
0-24 months   SAS-CompFeed     INDIA                          <52 kg                  0      429    810
0-24 months   SAS-CompFeed     INDIA                          <52 kg                  1      254    810
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg              0       57    810
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg              1       38    810
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0      149    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      268    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       55    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       80    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       58    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       95    705
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 0      530   3045
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 1      859   3045
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  0      377   3045
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  1      442   3045
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              0      354   3045
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              1      483   3045
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                 0       32   4729
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                 1       76   4729
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                  0     1409   4729
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                  1     2902   4729
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg              0       94   4729
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg              1      216   4729
0-6 months    LCNI-5           MALAWI                         >=58 kg                 0        0      4
0-6 months    LCNI-5           MALAWI                         >=58 kg                 1        0      4
0-6 months    LCNI-5           MALAWI                         <52 kg                  0        3      4
0-6 months    LCNI-5           MALAWI                         <52 kg                  1        0      4
0-6 months    LCNI-5           MALAWI                         [52-58) kg              0        1      4
0-6 months    LCNI-5           MALAWI                         [52-58) kg              1        0      4
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                 0        2     61
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                 1        5     61
0-6 months    MAL-ED           BANGLADESH                     <52 kg                  0       10     61
0-6 months    MAL-ED           BANGLADESH                     <52 kg                  1       34     61
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg              0        0     61
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg              1       10     61
0-6 months    MAL-ED           BRAZIL                         >=58 kg                 0        1     14
0-6 months    MAL-ED           BRAZIL                         >=58 kg                 1        8     14
0-6 months    MAL-ED           BRAZIL                         <52 kg                  0        0     14
0-6 months    MAL-ED           BRAZIL                         <52 kg                  1        2     14
0-6 months    MAL-ED           BRAZIL                         [52-58) kg              0        0     14
0-6 months    MAL-ED           BRAZIL                         [52-58) kg              1        3     14
0-6 months    MAL-ED           INDIA                          >=58 kg                 0        3     83
0-6 months    MAL-ED           INDIA                          >=58 kg                 1        7     83
0-6 months    MAL-ED           INDIA                          <52 kg                  0       20     83
0-6 months    MAL-ED           INDIA                          <52 kg                  1       37     83
0-6 months    MAL-ED           INDIA                          [52-58) kg              0        3     83
0-6 months    MAL-ED           INDIA                          [52-58) kg              1       13     83
0-6 months    MAL-ED           NEPAL                          >=58 kg                 0        1     48
0-6 months    MAL-ED           NEPAL                          >=58 kg                 1        7     48
0-6 months    MAL-ED           NEPAL                          <52 kg                  0        5     48
0-6 months    MAL-ED           NEPAL                          <52 kg                  1       21     48
0-6 months    MAL-ED           NEPAL                          [52-58) kg              0        3     48
0-6 months    MAL-ED           NEPAL                          [52-58) kg              1       11     48
0-6 months    MAL-ED           PERU                           >=58 kg                 0        0     11
0-6 months    MAL-ED           PERU                           >=58 kg                 1        4     11
0-6 months    MAL-ED           PERU                           <52 kg                  0        0     11
0-6 months    MAL-ED           PERU                           <52 kg                  1        5     11
0-6 months    MAL-ED           PERU                           [52-58) kg              0        0     11
0-6 months    MAL-ED           PERU                           [52-58) kg              1        2     11
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                 0        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                 1       17     29
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                  0        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                  1        2     29
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg              0        3     29
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg              1        5     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     14
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                 0        6    223
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                 1       16    223
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                  0       51    223
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                  1      122    223
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg              0        7    223
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg              1       21    223
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                 0        2    196
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                 1       31    196
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                  0       16    196
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                  1      115    196
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg              0        2    196
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg              1       30    196
0-6 months    PROBIT           BELARUS                        >=58 kg                 0      265   3826
0-6 months    PROBIT           BELARUS                        >=58 kg                 1     2547   3826
0-6 months    PROBIT           BELARUS                        <52 kg                  0       24   3826
0-6 months    PROBIT           BELARUS                        <52 kg                  1      305   3826
0-6 months    PROBIT           BELARUS                        [52-58) kg              0       43   3826
0-6 months    PROBIT           BELARUS                        [52-58) kg              1      642   3826
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                 0        3    180
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                 1       21    180
0-6 months    PROVIDE          BANGLADESH                     <52 kg                  0       30    180
0-6 months    PROVIDE          BANGLADESH                     <52 kg                  1      100    180
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg              0        3    180
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg              1       23    180
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                 0        8    339
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                 1       10    339
0-6 months    SAS-CompFeed     INDIA                          <52 kg                  0      134    339
0-6 months    SAS-CompFeed     INDIA                          <52 kg                  1      141    339
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg              0       22    339
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg              1       24    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       55    337
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      142    337
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       18    337
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       41    337
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       26    337
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       55    337
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                 0      131   2016
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                 1      825   2016
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                  0       94   2016
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                  1      421   2016
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg              0       86   2016
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg              1      459   2016
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      173    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        9    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      344    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      242    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    794
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 0       61   2833
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 1        0   2833
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                  0     2594   2833
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                  1        0   2833
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              0      178   2833
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              1        0   2833
6-24 months   LCNI-5           MALAWI                         >=58 kg                 0        5     74
6-24 months   LCNI-5           MALAWI                         >=58 kg                 1        1     74
6-24 months   LCNI-5           MALAWI                         <52 kg                  0       44     74
6-24 months   LCNI-5           MALAWI                         <52 kg                  1       10     74
6-24 months   LCNI-5           MALAWI                         [52-58) kg              0       12     74
6-24 months   LCNI-5           MALAWI                         [52-58) kg              1        2     74
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                 0        1     61
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                 1        4     61
6-24 months   MAL-ED           BANGLADESH                     <52 kg                  0       25     61
6-24 months   MAL-ED           BANGLADESH                     <52 kg                  1       25     61
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg              0        5     61
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg              1        1     61
6-24 months   MAL-ED           BRAZIL                         >=58 kg                 0        3      9
6-24 months   MAL-ED           BRAZIL                         >=58 kg                 1        0      9
6-24 months   MAL-ED           BRAZIL                         <52 kg                  0        0      9
6-24 months   MAL-ED           BRAZIL                         <52 kg                  1        0      9
6-24 months   MAL-ED           BRAZIL                         [52-58) kg              0        2      9
6-24 months   MAL-ED           BRAZIL                         [52-58) kg              1        4      9
6-24 months   MAL-ED           INDIA                          >=58 kg                 0        2     95
6-24 months   MAL-ED           INDIA                          >=58 kg                 1        2     95
6-24 months   MAL-ED           INDIA                          <52 kg                  0       34     95
6-24 months   MAL-ED           INDIA                          <52 kg                  1       44     95
6-24 months   MAL-ED           INDIA                          [52-58) kg              0        8     95
6-24 months   MAL-ED           INDIA                          [52-58) kg              1        5     95
6-24 months   MAL-ED           NEPAL                          >=58 kg                 0        1     50
6-24 months   MAL-ED           NEPAL                          >=58 kg                 1        9     50
6-24 months   MAL-ED           NEPAL                          <52 kg                  0        8     50
6-24 months   MAL-ED           NEPAL                          <52 kg                  1       17     50
6-24 months   MAL-ED           NEPAL                          [52-58) kg              0        2     50
6-24 months   MAL-ED           NEPAL                          [52-58) kg              1       13     50
6-24 months   MAL-ED           PERU                           >=58 kg                 0        1     24
6-24 months   MAL-ED           PERU                           >=58 kg                 1        4     24
6-24 months   MAL-ED           PERU                           <52 kg                  0        5     24
6-24 months   MAL-ED           PERU                           <52 kg                  1       10     24
6-24 months   MAL-ED           PERU                           [52-58) kg              0        0     24
6-24 months   MAL-ED           PERU                           [52-58) kg              1        4     24
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 0        5     51
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 1       28     51
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  1        6     51
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              0        4     51
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              1        8     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       19     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     37
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 0       11    198
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 1        8    198
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                  0      110    198
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                  1       43    198
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              0       17    198
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              1        9    198
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 0       14    113
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 1        3    113
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  0       70    113
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  1       10    113
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              0       12    113
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              1        4    113
6-24 months   PROBIT           BELARUS                        >=58 kg                 0       58    126
6-24 months   PROBIT           BELARUS                        >=58 kg                 1       29    126
6-24 months   PROBIT           BELARUS                        <52 kg                  0       10    126
6-24 months   PROBIT           BELARUS                        <52 kg                  1        2    126
6-24 months   PROBIT           BELARUS                        [52-58) kg              0       24    126
6-24 months   PROBIT           BELARUS                        [52-58) kg              1        3    126
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                 0        7    123
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                 1        4    123
6-24 months   PROVIDE          BANGLADESH                     <52 kg                  0       70    123
6-24 months   PROVIDE          BANGLADESH                     <52 kg                  1       24    123
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg              0       12    123
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg              1        6    123
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                 0        7    471
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                 1        7    471
6-24 months   SAS-CompFeed     INDIA                          <52 kg                  0      295    471
6-24 months   SAS-CompFeed     INDIA                          <52 kg                  1      113    471
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg              0       35    471
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg              1       14    471
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       94    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      126    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       37    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       39    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       32    368
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       40    368
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 0      399   1029
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 1       34   1029
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  0      283   1029
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  1       21   1029
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              0      268   1029
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              1       24   1029


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/d973c30e-8269-4004-9a85-4cc0579a932d/8e766b19-d774-4b23-a288-813a6d7a55ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d973c30e-8269-4004-9a85-4cc0579a932d/8e766b19-d774-4b23-a288-813a6d7a55ed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d973c30e-8269-4004-9a85-4cc0579a932d/8e766b19-d774-4b23-a288-813a6d7a55ed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d973c30e-8269-4004-9a85-4cc0579a932d/8e766b19-d774-4b23-a288-813a6d7a55ed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4484162   0.3824218   0.5144105
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.4206547   0.4090272   0.4322822
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.4373579   0.3928730   0.4818429
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.6428571   0.3090040   0.9767102
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.6000000   0.5104195   0.6895805
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.6206897   0.4196644   0.8217149
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.5923516   0.4018994   0.7828038
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.5057256   0.4492213   0.5622299
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5506509   0.3960412   0.7052607
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.7029821   0.5729086   0.8330556
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.5877404   0.5214659   0.6540148
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.7041489   0.5517685   0.8565294
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.8894726   0.8780780   0.9008672
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.9024395   0.8718362   0.9330429
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.9058951   0.8844887   0.9273015
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.7087007   0.5565476   0.8608538
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.5538834   0.4874697   0.6202971
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.6550233   0.5016798   0.8083668
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5764716   0.3433015   0.8096417
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.3713901   0.3342281   0.4085521
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.4119710   0.3027095   0.5212325
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6438592   0.5947999   0.6929185
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5869208   0.5040077   0.6698339
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6214027   0.5378503   0.7049551
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.6205923   0.5944074   0.6467771
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5413053   0.5073163   0.5752943
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.5746726   0.5412134   0.6081318
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.6995387   0.6210252   0.7780521
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.6734671   0.6594666   0.6874675
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.6933838   0.6421084   0.7446592
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7272727   0.5399105   0.9146349
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.7052023   0.6373168   0.7730878
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7500000   0.5885262   0.9114738
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.9063081   0.8954378   0.9171783
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.9249074   0.8961770   0.9536379
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.9365729   0.9175281   0.9556178
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.5555556   0.3186642   0.7924469
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.5127273   0.4532019   0.5722526
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.5217391   0.3760549   0.6674233
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7211588   0.6571778   0.7851398
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7053304   0.5876273   0.8230335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7029921   0.6025722   0.8034120
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.8616374   0.8396310   0.8836439
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8158080   0.7820356   0.8495805
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8415651   0.8107948   0.8723354
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4210526   0.1702652   0.6718400
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.2810458   0.2089924   0.3530991
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.3461538   0.1723455   0.5199622
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5000000   0.2080230   0.7919770
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.2769608   0.2328732   0.3210483
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2857143   0.1492017   0.4222269
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5724519   0.5047967   0.6401070
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5153277   0.4009111   0.6297444
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.5543202   0.4291300   0.6795105
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0779721   0.0519060   0.1040381
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0691086   0.0392732   0.0989441
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0807467   0.0516430   0.1098503


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4223750   0.4112477   0.4335024
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8927126   0.8831771   0.9022480
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3814815   0.3463355   0.4166275
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905321   0.6662055
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5858785   0.5683064   0.6034506
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6754071   0.6620619   0.6887522
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9132253   0.9042495   0.9222011
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5162242   0.4625356   0.5699128
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7062315   0.6568751   0.7555878
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.8457341   0.8300360   0.8614323
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2845011   0.2426711   0.3263311
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0767736   0.0605511   0.0929961


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.0055249   0.4505247   2.2442281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.6471111   0.2603826   1.6082211
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           0.9380899   0.8076723   1.0895666
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9753394   0.8156113   1.1663484
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           0.9333333   0.5436369   1.6023766
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           0.9655172   0.5237016   1.7800664
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.8537591   0.6074391   1.1999634
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9296015   0.6065616   1.4246844
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           0.8360673   0.6727991   1.0389557
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.0016598   0.7533921   1.3317399
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.0145782   0.9784522   1.0520381
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0184632   0.9914488   1.0462136
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           0.7815477   0.6096127   1.0019753
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           0.9242594   0.6729706   1.2693801
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           0.6442471   0.4245214   0.9776992
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.7146423   0.4409796   1.1581344
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9115670   0.7763988   1.0702674
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9651220   0.8270386   1.1262599
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8722399   0.8087694   0.9406914
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9260067   0.8618157   0.9949790
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           0.9627303   0.8589084   1.0791019
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9912016   0.8665539   1.1337789
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.9696532   0.7365063   1.2766045
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0312500   0.7371449   1.4426967
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.0205222   0.9870944   1.0550820
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0333936   1.0092790   1.0580843
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           0.9229091   0.5932432   1.4357707
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.9391304   0.5641157   1.5634487
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9780514   0.8098536   1.1811820
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9748090   0.8247762   1.1521339
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.9468113   0.9018695   0.9939926
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9767044   0.9340772   1.0212771
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.0055249   0.4505247   2.2442281
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.6471111   0.2603826   1.6082211
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.6674837   0.3488386   1.2771937
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8221154   0.3772729   1.7914718
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           0.5539216   0.3024033   1.0146354
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.5714286   0.2687084   1.2151857
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9002115   0.6998495   1.1579356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9683264   0.7502609   1.2497732
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8863257   0.5132305   1.5306438
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0355845   0.6333667   1.6932299


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0260411   -0.0912864    0.0392041
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0361156   -0.3530819    0.2808508
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0721616   -0.2516093    0.1072861
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0783867   -0.1978323    0.0410590
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0032400   -0.0023028    0.0087827
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1212420   -0.2669883    0.0245044
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1949901   -0.4226568    0.0326765
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0154904   -0.0468344    0.0158536
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0347138   -0.0539359   -0.0154916
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0241316   -0.1017978    0.0535346
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0142682   -0.1923365    0.1638001
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0069172    0.0018547    0.0119797
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0393314   -0.2696368    0.1909741
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0149274   -0.0565300    0.0266753
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0159033   -0.0325323    0.0007257
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1180223   -0.3533429    0.1172982
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2154989   -0.5017372    0.0707393
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0153866   -0.0589317    0.0281585
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0011985   -0.0205737    0.0181767


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0616540   -0.2279727    0.0821382
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0595238   -0.7337052    0.3524904
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1387216   -0.5404787    0.1582572
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1254999   -0.3345821    0.0508265
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0036293   -0.0026021    0.0098220
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.2063838   -0.4847669    0.0198045
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5111391   -1.2400295   -0.0194248
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0246518   -0.0757954    0.0240605
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0592508   -0.0926029   -0.0269168
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0357290   -0.1573669    0.0731250
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0200114   -0.3030056    0.2015204
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0075745    0.0020051    0.0131128
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0761905   -0.6290300    0.2890334
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0211366   -0.0818244    0.0361467
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0188042   -0.0386868    0.0006979
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3894737   -1.4221313    0.2029181
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.7574627   -2.1133642    0.0079300
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0276209   -0.1089381    0.0477334
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0156108   -0.3018531    0.2076947
