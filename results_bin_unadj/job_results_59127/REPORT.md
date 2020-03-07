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

unadjusted

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
![](/tmp/7f82df30-810d-40a0-bd62-a3681d17f35a/bf4aea70-23cd-489d-a15c-8c3387a42ec9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7f82df30-810d-40a0-bd62-a3681d17f35a/bf4aea70-23cd-489d-a15c-8c3387a42ec9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7f82df30-810d-40a0-bd62-a3681d17f35a/bf4aea70-23cd-489d-a15c-8c3387a42ec9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7f82df30-810d-40a0-bd62-a3681d17f35a/bf4aea70-23cd-489d-a15c-8c3387a42ec9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4497041   0.3825662   0.5168421
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.4202752   0.4086476   0.4319028
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.4426230   0.3981416   0.4871043
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.6428571   0.3090040   0.9767102
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.6000000   0.5104195   0.6895805
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.6206897   0.4196644   0.8217149
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.5853659   0.4034903   0.7672414
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.5061350   0.4500094   0.5622605
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5555556   0.4097932   0.7013179
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.6800000   0.5438618   0.8161382
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.5924171   0.5270766   0.6577576
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.7083333   0.5732108   0.8434559
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.8885823   0.8771758   0.8999887
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.9002933   0.8695862   0.9310003
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.9058989   0.8852610   0.9265367
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.7142857   0.5668399   0.8617315
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.5535714   0.4873000   0.6198429
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.6590909   0.5087422   0.8094396
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5312500   0.3215651   0.7409349
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.3718887   0.3347492   0.4090282
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.4000000   0.2871107   0.5128893
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6426859   0.5935011   0.6918706
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5925926   0.5100432   0.6751420
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6209150   0.5369579   0.7048722
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.6184305   0.5922315   0.6446295
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5396825   0.5059811   0.5733839
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.5770609   0.5439802   0.6101416
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.7037037   0.6249922   0.7824152
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.6731617   0.6591563   0.6871670
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.6967742   0.6457904   0.7477580
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7272727   0.5399105   0.9146349
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.7052023   0.6373168   0.7730878
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7500000   0.5885262   0.9114738
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.9057610   0.8948926   0.9166295
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.9270517   0.8990819   0.9550215
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.9372263   0.9188644   0.9555881
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.5555556   0.3186642   0.7924469
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.5127273   0.4532019   0.5722526
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.5217391   0.3760549   0.6674233
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7208122   0.6570635   0.7845609
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6949153   0.5752008   0.8146297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6790123   0.5766082   0.7814165
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.8629707   0.8411232   0.8848182
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8174757   0.7842031   0.8507484
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8422018   0.8120982   0.8723055
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4210526   0.1702652   0.6718400
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.2810458   0.2089924   0.3530991
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.3461538   0.1723455   0.5199622
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5000000   0.2080230   0.7919770
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.2769608   0.2328732   0.3210483
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2857143   0.1492017   0.4222269
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5727273   0.5052784   0.6401762
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5131579   0.3996590   0.6266568
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.5555556   0.4322631   0.6788480
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0785219   0.0526146   0.1044293
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0690789   0.0394268   0.0987311
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0821918   0.0532147   0.1111688


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
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           0.9345592   0.8029076   1.0877976
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9842537   0.8221456   1.1783257
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           0.9333333   0.5436369   1.6023766
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           0.9655172   0.5237016   1.7800664
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.8646472   0.6216696   1.2025920
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9490741   0.6319417   1.4253556
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           0.8712016   0.6929653   1.0952817
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.0416667   0.7899610   1.3735735
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.0131794   0.9769201   1.0507845
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0194879   0.9931742   1.0464988
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           0.7750000   0.6103311   0.9840970
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           0.9227273   0.6782172   1.2553877
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           0.7000258   0.4659049   1.0517945
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.7529412   0.4634801   1.2231818
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9220564   0.7865536   1.0809028
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9661253   0.8270983   1.1285213
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8726648   0.8092217   0.9410818
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9331055   0.8688888   1.0020683
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           0.9565982   0.8537272   1.0718647
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9901528   0.8662717   1.1317495
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.9696532   0.7365063   1.2766045
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0312500   0.7371449   1.4426967
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.0235058   0.9908071   1.0572837
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0347390   1.0112377   1.0587866
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           0.9229091   0.5932432   1.4357707
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.9391304   0.5641157   1.5634487
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9640726   0.7943424   1.1700696
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9420101   0.7909114   1.1219753
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.9472810   0.9029461   0.9937927
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9759333   0.9341087   1.0196306
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
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.8959900   0.6973883   1.1511493
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9700176   0.7545103   1.2470793
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8797407   0.5119502   1.5117558
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0467365   0.6458518   1.6964531


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0273291   -0.0937060    0.0390478
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0361156   -0.3530819    0.2808508
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0651758   -0.2360244    0.1056728
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0554045   -0.1796536    0.0688445
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0041303   -0.0013623    0.0096228
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1268270   -0.2674449    0.0137909
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1497685   -0.3540331    0.0544960
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0143171   -0.0457770    0.0171429
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0325520   -0.0517329   -0.0133712
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0282966   -0.1061672    0.0495739
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0142682   -0.1923365    0.1638001
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0074643    0.0024596    0.0124689
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0393314   -0.2696368    0.1909741
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0145807   -0.0564284    0.0272669
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0172366   -0.0337002   -0.0007730
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1180223   -0.3533429    0.1172982
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2154989   -0.5017372    0.0707393
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0156621   -0.0589910    0.0276669
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0017484   -0.0209707    0.0174739


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0647034   -0.2340855    0.0814304
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.0595238   -0.7337052    0.3524904
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1252923   -0.5057292    0.1590235
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.0887047   -0.3070263    0.0931492
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0046267   -0.0015495    0.0107648
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.2158909   -0.4835515    0.0034788
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3925971   -1.0436146    0.0510311
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0227845   -0.0741172    0.0260950
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0555611   -0.0888317   -0.0233071
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0418957   -0.1638350    0.0672676
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0200114   -0.3030056    0.2015204
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0081735    0.0026663    0.0136503
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.0761905   -0.6290300    0.2890334
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0206458   -0.0817188    0.0369790
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0203806   -0.0400678   -0.0010661
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3894737   -1.4221313    0.2029181
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                -0.7574627   -2.1133642    0.0079300
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0281153   -0.1090211    0.0468882
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0227731   -0.3061366    0.1991153
