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
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       36    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       58    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        5    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       11    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        8     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        7     23
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        4    175
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        8    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       55    175
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       79    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       11    175
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       18    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       15     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       13     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       36     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       22     93
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        6     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        6     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       43     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        1     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        8     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        6     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       13     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        6     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       21     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        8     45
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       20    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       19    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      430    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      256    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       51    810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       34    810
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       17    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      161    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      165    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       24    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       30    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0        9    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       25    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0       99    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      125    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       16    302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       28    302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0       16    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       35    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0       86    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      125    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0       14    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       34    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0      149    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      268    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       55    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       80    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       58    705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       95    705
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      171    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        8    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      342    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      234    781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    781
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0      357   3968
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2557   3968
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0       43   3968
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      303   3968
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0       87   3968
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      621   3968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      519   3012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      854   3012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0      375   3012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      436   3012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0      352   3012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      476   3012
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        5     78
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        1     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0       47     78
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       10     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       13     78
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        2     78
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        5     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       10     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       33     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        0     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     14
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        2     80
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       20     80
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       36     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0        3     80
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       13     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        6     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0        5     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       19     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        3     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1        9     43
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              1        2     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       17     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        2     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        2     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        4     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     12
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0        8    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       11    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      135    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      145    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       21    339
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       19    339
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0        6    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0       51    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      122    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0        7    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       21    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0        3    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       21    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0       29    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      100    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0        3    179
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       23    179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       32    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0       16    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      115    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0        2    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       30    197
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      135   2015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      821   2015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0       97   2015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      418   2015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0       89   2015
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      455   2015
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        0      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0        1     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       26     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       25     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1        1     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       35     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       43     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0        8     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1        5     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0        8     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       17     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       13     50
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1        9     23
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       26     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0        4     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        9     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0        5     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       16     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     33
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       12    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1        8    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      295    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      111    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0       30    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       15    471
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       11    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      110    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1       43    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       17    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1        9    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0        6    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1        4    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0       70    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       13    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1        5    123
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      171    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1        8    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      342    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1       18    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      234    781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1        8    781
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0       69    143
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       27    143
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0       10    143
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1        4    143
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0       27    143
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1        6    143
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0      384    997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1       33    997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0      278    997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1       18    997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0      263    997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1       21    997
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0        5     74
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        1     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0       44     74
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       10     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       12     74
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        2     74


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
![](/tmp/3c8996ea-1ad5-4adc-942c-c10c9c299f46/6d759f32-0e49-4148-a763-004696ac0c39/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3c8996ea-1ad5-4adc-942c-c10c9c299f46/6d759f32-0e49-4148-a763-004696ac0c39/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3c8996ea-1ad5-4adc-942c-c10c9c299f46/6d759f32-0e49-4148-a763-004696ac0c39/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3c8996ea-1ad5-4adc-942c-c10c9c299f46/6d759f32-0e49-4148-a763-004696ac0c39/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4863505   0.3102797   0.6624213
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3731407   0.3359352   0.4103462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.4024410   0.2750078   0.5298743
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.5960585   0.4078491   0.7842680
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.5057215   0.4494461   0.5619968
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5544044   0.4052757   0.7035331
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.7352941   0.5846182   0.8859701
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5580357   0.4920376   0.6240339
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.6363636   0.4828843   0.7898430
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.6911592   0.5612311   0.8210873
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5950349   0.5290229   0.6610470
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.6876147   0.5257118   0.8495177
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6438234   0.5945721   0.6930746
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5978595   0.5143007   0.6814183
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6289758   0.5439521   0.7139996
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0446927   0.0135156   0.0758699
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0500000   0.0272248   0.0727752
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0330579   0.0123898   0.0537259
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8778981   0.8660539   0.8897424
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.8763080   0.8424421   0.9101739
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.8798041   0.8561251   0.9034831
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.6267547   0.6005436   0.6529657
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5328114   0.4987475   0.5668753
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.5715116   0.5377293   0.6052939
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5789474   0.3498480   0.8080467
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5178571   0.4588483   0.5768660
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.4750000   0.3193575   0.6306425
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7272727   0.5399105   0.9146349
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7052023   0.6373168   0.7730878
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7500000   0.5885262   0.9114738
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7262278   0.6623573   0.7900984
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6881525   0.5667412   0.8095637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.6663269   0.5624334   0.7702204
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8982468   0.8869518   0.9095418
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.9033639   0.8721778   0.9345499
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.9113452   0.8896255   0.9330649
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.8578788   0.8356049   0.8801526
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.8082190   0.7736763   0.8427616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.8356762   0.8045176   0.8668348
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4000000   0.1876007   0.6123993
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2733990   0.2292567   0.3175413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3333333   0.1806477   0.4860189
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4210526   0.1702652   0.6718400
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2810458   0.2089924   0.3530991
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.3461538   0.1723455   0.5199622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5705441   0.5028064   0.6382818
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5107993   0.3961319   0.6254667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.5522024   0.4272615   0.6771432
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0446927   0.0135156   0.0758699
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0500000   0.0272248   0.0727752
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0330579   0.0123898   0.0537259
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0805625   0.0533132   0.1078119
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0615896   0.0321550   0.0910242
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0739604   0.0464587   0.1014621


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3814815   0.3463355   0.4166275
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5894040   0.5323948   0.6464131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6258065   0.5718723   0.6797406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905321   0.6662055
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8772681   0.8671551   0.8873812
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5863214   0.5686726   0.6039701
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5162242   0.4625356   0.5699128
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7062315   0.6568751   0.7555878
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.9003922   0.8908257   0.9099586
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8406948   0.8247812   0.8566083
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2845011   0.2426711   0.3263311
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0435339   0.0292984   0.0577695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0722166   0.0562671   0.0881662


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.7672260   0.5270782   1.1167900
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.8274712   0.5114712   1.3387040
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.8484426   0.6068437   1.1862277
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9301174   0.6142705   1.4083670
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           0.7589286   0.5989095   0.9617023
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.8654545   0.6305508   1.1878687
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           0.8609231   0.6915300   1.0718097
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           0.9948717   0.7357012   1.3453418
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9286080   0.7917658   1.0891009
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9769385   0.8363441   1.1411677
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.1187500   0.4863026   2.5737094
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.7396694   0.2898718   1.8874236
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.9981887   0.9581473   1.0399036
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0021711   0.9724388   1.0328124
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.8501116   0.7875492   0.9176439
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9118586   0.8481388   0.9803655
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.8944805   0.5925569   1.3502424
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.8204545   0.4908259   1.3714550
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.9696532   0.7365063   1.2766045
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0312500   0.7371449   1.4426967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.9475711   0.7781762   1.1538401
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9175177   0.7672544   1.0972095
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0056967   0.9694134   1.0433381
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0145822   0.9876050   1.0422962
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.9421132   0.8961384   0.9904467
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9741192   0.9308359   1.0194152
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           0.6834975   0.3923772   1.1906117
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.8333333   0.4133009   1.6802394
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           0.6674837   0.3488386   1.2771937
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8221154   0.3772729   1.7914718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           0.8952845   0.6944021   1.1542799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9678522   0.7495341   1.2497602
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.1187500   0.4863026   2.5737094
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           0.7396694   0.2898718   1.8874236
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           0.7644941   0.4255014   1.3735588
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.9180492   0.5552976   1.5177706


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1048690   -0.2763224    0.0665844
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0758685   -0.2529329    0.1011959
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.1458901   -0.2895446   -0.0022357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0653528   -0.1846707    0.0539652
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0154546   -0.0470243    0.0161152
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0011588   -0.0281611    0.0258435
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0006300   -0.0067524    0.0054924
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0404333   -0.0597413   -0.0211252
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0627232   -0.2851766    0.1597303
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0142682   -0.1923365    0.1638001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0199964   -0.0618035    0.0218107
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0021454   -0.0034780    0.0077687
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0171840   -0.0340384   -0.0003296
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1154989   -0.3229953    0.0919975
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1180223   -0.3533429    0.1172982
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0134789   -0.0570459    0.0300882
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0011588   -0.0281611    0.0258435
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0083459   -0.0282324    0.0115406


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2748994   -0.8136631    0.1038200
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1458477   -0.5409776    0.1479649
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.2475215   -0.5202035   -0.0237510
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1044297   -0.3130109    0.0710169
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0245947   -0.0761123    0.0244565
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0266185   -0.8777261    0.4387118
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0007181   -0.0077214    0.0062365
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0689609   -0.1024630   -0.0364769
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1215038   -0.6471022    0.2363736
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0200114   -0.3030056    0.2015204
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0283142   -0.0893367    0.0292900
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0023827   -0.0038835    0.0086097
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0204402   -0.0407207   -0.0005549
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4059701   -1.3642228    0.1638893
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3894737   -1.4221313    0.2029181
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0241962   -0.1055440    0.0511659
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                -0.0266185   -0.8777261    0.4387118
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1155675   -0.4246367    0.1264504
