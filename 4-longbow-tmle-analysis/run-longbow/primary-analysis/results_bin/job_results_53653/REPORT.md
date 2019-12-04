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

agecat        studyid                    country                        mwtkg         wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0        3    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        9    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       35    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       59    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        5    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       11    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        8     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        7     23
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        5    178
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        9    178
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       54    178
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       81    178
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       11    178
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       18    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        2     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       16     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       13     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       38     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        5     98
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       24     98
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0        1     35
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     35
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0        5     35
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       15     35
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        6     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        6     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       45     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        1     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        8     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        7     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       13     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1       10     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        6     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       24     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        2     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        8     51
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       15    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       17    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      429    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      254    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       57    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       38    810
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      161    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      165    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       30    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       10    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       25    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      100    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      124    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       15    303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       29    303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0       16    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       34    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0       86    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      125    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0       14    309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       34    309
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0      149    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      268    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       55    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       80    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       58    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       95    705
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      173    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        9    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      344    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      242    794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    794
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0      357   3968
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2557   3968
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0       43   3968
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      303   3968
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0       87   3968
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      621   3968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      530   3045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      859   3045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0      377   3045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      442   3045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0      354   3045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      483   3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        5     78
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        1     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0       47     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       10     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       13     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        2     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0       93   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1       76   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0     4003   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1     2902   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0      272   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1      216   7562
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0        2     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        5     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       10     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       34     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        0     61
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     61
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        7     83
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       20     83
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       37     83
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0        3     83
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       13     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        1     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0        5     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       21     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        3     48
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       11     48
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              1        2     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       17     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        1     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        2     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        3     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        5     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     14
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0        8    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       10    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      134    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      141    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       22    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       24    339
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0        6    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0       51    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      122    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0        7    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       21    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0        3    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       21    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0       30    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      100    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0        3    180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       23    180
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0        2    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       31    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0       16    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      115    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0        2    196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       30    196
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       55    337
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      142    337
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       18    337
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       41    337
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       26    337
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       55    337
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 0      288   3825
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2530   3825
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  0       33   3825
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  1      299   3825
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              0       60   3825
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              1      615   3825
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      131   2016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      825   2016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0       94   2016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      421   2016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0       86   2016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      459   2016
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0       32   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1       76   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0     1409   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1     2902   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0       94   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1      216   4729
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0        1     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        4     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       25     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       25     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        5     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1        1     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       34     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1        5     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0        8     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       17     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       13     50
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0        5     24
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       10     24
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        5     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       28     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        6     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        4     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        8     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        5     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       19     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        2     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     37
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0        7    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1        7    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      295    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      113    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       35    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       14    471
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      110    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1       43    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       17    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1        9    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0       70    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       12    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1        6    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0       14    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1        3    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0       70    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1       10    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0       12    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       94    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      126    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       37    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       39    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       32    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       40    368
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      173    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        9    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      344    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      242    794
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    794
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0       69    143
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       27    143
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0       10    143
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1        4    143
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0       27    143
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1        6    143
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      399   1029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1       34   1029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0      283   1029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1       21   1029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0      268   1029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1       24   1029
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        5     74
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        1     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0       44     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       10     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       12     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        2     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0       61   2833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1        0   2833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0     2594   2833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1        0   2833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0      178   2833
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1        0   2833


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/86a61c7a-1cb3-435e-b58e-a09d01f4b602/50d1c45e-62e1-45e1-a7dc-1990695e988a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/86a61c7a-1cb3-435e-b58e-a09d01f4b602/50d1c45e-62e1-45e1-a7dc-1990695e988a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/86a61c7a-1cb3-435e-b58e-a09d01f4b602/50d1c45e-62e1-45e1-a7dc-1990695e988a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/86a61c7a-1cb3-435e-b58e-a09d01f4b602/50d1c45e-62e1-45e1-a7dc-1990695e988a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.6428571   0.3090040   0.9767102
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.6000000   0.5104195   0.6895805
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.6206897   0.4196644   0.8217149
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5275952   0.3066441   0.7485462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3720588   0.3349069   0.4092106
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3993910   0.2844974   0.5142847
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.5890560   0.4032443   0.7748677
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.5067284   0.4502744   0.5631824
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5480273   0.3989025   0.6971520
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.7214650   0.5565059   0.8864241
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5515610   0.4847889   0.6183330
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.6630427   0.5054423   0.8206432
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.6910348   0.5592290   0.8228407
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5903885   0.5239623   0.6568148
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.6943733   0.5399650   0.8487816
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6437593   0.5946773   0.6928413
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5786543   0.4955943   0.6617144
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6179553   0.5327233   0.7031872
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8778928   0.8660419   0.8897437
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.8775320   0.8434124   0.9116517
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.8791930   0.8550308   0.9033551
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.6244134   0.5982932   0.6505336
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5317980   0.4977396   0.5658565
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.5722336   0.5389218   0.6055454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.4444223   0.3791105   0.5097341
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.4204388   0.4088100   0.4320676
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.4395986   0.3950716   0.4841255
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5555556   0.3186642   0.7924469
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5127273   0.4532019   0.5722526
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.5217391   0.3760549   0.6674233
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7272727   0.5399105   0.9146349
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7052023   0.6373168   0.7730878
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7500000   0.5885262   0.9114738
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7245443   0.6607137   0.7883749
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6769430   0.5528909   0.8009950
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6735461   0.5707882   0.7763041
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8983507   0.8870658   0.9096355
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.9018864   0.8701160   0.9336569
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.9122132   0.8906013   0.9338250
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.8630611   0.8412051   0.8849172
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8157167   0.7820038   0.8494296
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8422253   0.8119005   0.8725501
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.6998416   0.6229977   0.7766856
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.6732780   0.6592701   0.6872859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.6970257   0.6454286   0.7486228
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5000000   0.2080230   0.7919770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2769608   0.2328732   0.3210483
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2857143   0.1492017   0.4222269
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4210526   0.1702652   0.6718400
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2810458   0.2089924   0.3530991
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.3461538   0.1723455   0.5199622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5744374   0.5069133   0.6419615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5131568   0.3974622   0.6288513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.5515017   0.4233475   0.6796559
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0494505   0.0167815   0.0821196
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0497238   0.0270395   0.0724080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0320000   0.0119568   0.0520432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0804005   0.0543713   0.1064296
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0681166   0.0378162   0.0984170
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0818824   0.0529299   0.1108350


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3814815   0.3463355   0.4166275
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905321   0.6662055
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8772681   0.8671551   0.8873812
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5858785   0.5683064   0.6034506
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223750   0.4112477   0.4335024
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5162242   0.4625356   0.5699128
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7062315   0.6568751   0.7555878
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.9003922   0.8908257   0.9099586
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8457341   0.8300360   0.8614323
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6754071   0.6620619   0.6887522
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2845011   0.2426711   0.3263311
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0440806   0.0298222   0.0583390
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0767736   0.0605511   0.0929961


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           0.9333333   0.5436369   1.6023766
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           0.9655172   0.5237016   1.7800664
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.7051975   0.4585007   1.0846297
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.7570028   0.4554648   1.2581725
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.8602381   0.6156398   1.2020171
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9303483   0.6133618   1.4111541
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           0.7645014   0.5899474   0.9907024
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.9190228   0.6607114   1.2783234
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           0.8543542   0.6842808   1.0666983
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.0048310   0.7495660   1.3470267
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.8988675   0.7639718   1.0575820
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9599167   0.8197963   1.1239865
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.0055249   0.4505247   2.2442281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.6471111   0.2603826   1.6082211
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.9995891   0.9592777   1.0415945
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0014810   0.9712759   1.0326254
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8516762   0.7889453   0.9193949
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9164339   0.8530352   0.9845445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           0.9460345   0.8146805   1.0985671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.9891462   0.8275052   1.1823614
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.9229091   0.5932432   1.4357707
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.9391304   0.5641157   1.5634487
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.9696532   0.7365063   1.2766045
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0312500   0.7371449   1.4426967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9343018   0.7624054   1.1449549
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9296135   0.7795306   1.1085919
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0039359   0.9670792   1.0421972
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0154311   0.9885592   1.0430334
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.9451436   0.9004155   0.9920936
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9758583   0.9338300   1.0197780
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           0.9620433   0.8603566   1.0757486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.9959764   0.8724440   1.1370001
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.5539216   0.3024033   1.0146354
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.5714286   0.2687084   1.2151857
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.6674837   0.3488386   1.2771937
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8221154   0.3772729   1.7914718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.8933206   0.6927651   1.1519369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9600727   0.7398588   1.2458319
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.0055249   0.4505247   2.2442281
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.6471111   0.2603826   1.6082211
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8472165   0.4887579   1.4685712
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0184323   0.6308389   1.6441667


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0361156   -0.3530819    0.2808508
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1461137   -0.3615151    0.0692877
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0688660   -0.2437901    0.1060582
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.1340062   -0.2912136    0.0232011
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0664394   -0.1877987    0.0549200
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0153905   -0.0468742    0.0160932
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0006246   -0.0067640    0.0055147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0385349   -0.0577218   -0.0193480
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0220472   -0.0866246    0.0425301
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0393314   -0.2696368    0.1909741
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0142682   -0.1923365    0.1638001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0183128   -0.0602068    0.0235812
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0020415   -0.0035777    0.0076607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0173270   -0.0338246   -0.0008294
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0244346   -0.1004738    0.0516047
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2154989   -0.5017372    0.0707393
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1180223   -0.3533429    0.1172982
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0173722   -0.0609201    0.0261757
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0053699   -0.0333220    0.0225821
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0036269   -0.0229996    0.0157458


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0595238   -0.7337052    0.3524904
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.3830164   -1.0778494    0.0794644
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1323862   -0.5229100    0.1579945
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.2281118   -0.5293637    0.0138000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1063718   -0.3192730    0.0721719
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0244928   -0.0758738    0.0244345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0007120   -0.0077348    0.0062618
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0657728   -0.0990753   -0.0334795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0521983   -0.2167940    0.0901326
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0761905   -0.6290300    0.2890334
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0200114   -0.3030056    0.2015204
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0259303   -0.0870828    0.0317821
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0022673   -0.0039940    0.0084896
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0204875   -0.0402164   -0.0011328
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.0361776   -0.1551284    0.0705242
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7574627   -2.1133642    0.0079300
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3894737   -1.4221313    0.2029181
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0311852   -0.1125290    0.0442110
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.1218210   -0.9692425    0.3609307
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0472414   -0.3320360    0.1766629
