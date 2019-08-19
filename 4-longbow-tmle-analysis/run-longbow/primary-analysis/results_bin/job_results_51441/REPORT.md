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
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
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

agecat        studyid                    country                        mwtkg         pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      149     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       41     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       35     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1     216
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       39     240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      132     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       17     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       48     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       73     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0      110     283
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1     283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       97    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        3    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      942    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      101    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      207    1359
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1        9    1359
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      396     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1     639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      188     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      366     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       25     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      150     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424    2126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13    2126
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      451    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      511    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      480    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       57    1633
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0    10177   13758
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       90   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0     1126   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        4   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2345   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1       16   13758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4614    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1884    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2345    9004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9004
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96     717
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     717
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      153     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       43     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       36     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        0     216
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               0       38     239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                0      135     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                1       14     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       47     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        3     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                0       72     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       80     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        2     237
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                0      111     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       28     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        0     263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       14     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        2     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      124     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1        8     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       20     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        1     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      115     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        1     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      398     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       11     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      109     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        2     636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0       64     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      126     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1        4     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0       55     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1258    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       27    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      314    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1        9    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      399    2022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       15    2022
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg               0     9004   13205
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg               1      863   13205
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                0      998   13205
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                1       83   13205
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2079   13205
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg            1      178   13205
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0      316     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1        8     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0      119     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1        2     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0      160     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1        4     609
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               0       45     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg               1        2     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                0      149     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                1        9     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            0       41     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg            1        2     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               0      139     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg               1        1     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                0       40     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                1        0     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            0       35     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg            1        1     216
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               0       39     240
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg               1        2     240
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                0      132     240
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                1       17     240
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            0       48     240
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg            1        2     240
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                0       73     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                1        3     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       81     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        1     238
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                0      110     283
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                1        1     283
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      189     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     265
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     265
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0       97    1359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        3    1359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      942    1359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      101    1359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      207    1359
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1        9    1359
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      396     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111     639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1     639
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               0      188     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg               1        0     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                0      366     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                1       25     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            0      150     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg            1        1     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               0     1311    2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg               1       31    2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                0      334    2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                1       13    2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0      424    2126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1       13    2126
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      451    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      511    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      480    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       57    1633
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0    10177   13758
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       90   13758
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0     1126   13758
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        4   13758
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2345   13758
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1       16   13758
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4614    9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1884    9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2345    9004
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9004
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96     717
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426     717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189     717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     717


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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




# Results Detail

## Results Plots
![](/tmp/755530b2-3df2-43b4-9581-80bb3e8c6771/a5f9db4b-e1e9-4996-8b53-87d721393410/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/755530b2-3df2-43b4-9581-80bb3e8c6771/a5f9db4b-e1e9-4996-8b53-87d721393410/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/755530b2-3df2-43b4-9581-80bb3e8c6771/a5f9db4b-e1e9-4996-8b53-87d721393410/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/755530b2-3df2-43b4-9581-80bb3e8c6771/a5f9db4b-e1e9-4996-8b53-87d721393410/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230729   0.0150303   0.0311156
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0374446   0.0173997   0.0574895
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0298328   0.0137464   0.0459193
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0649336   0.0399241   0.0899430
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1685184   0.1241688   0.2128680
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1073009   0.0703719   0.1442298
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0122226   0.0090285   0.0154167
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0345359   0.0260755   0.0429962
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0184969   0.0127310   0.0242628
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0871770   0.0580172   0.1163367
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0747364   0.0463060   0.1031668
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0766266   0.0507483   0.1025049
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0231012   0.0150494   0.0311531
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0377434   0.0175981   0.0578887
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0295214   0.0135599   0.0454830
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0653027   0.0405268   0.0900787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1673288   0.1232045   0.2114530
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1071464   0.0699745   0.1443182
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0121482   0.0089716   0.0153249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0346683   0.0262015   0.0431351
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0181431   0.0125277   0.0237586


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178809   0.0151436   0.0206183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0851193   0.0573651   0.1128734
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178809   0.0151436   0.0206183


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6228788   0.8567762   3.074006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2929797   0.6803889   2.457119
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5952431   1.7471191   3.855082
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6524710   1.0658290   2.562006
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.8255685   1.9749072   4.042639
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5133353   1.0074835   2.273173
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.8572949   0.6675496   1.100974
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.8789774   0.7255709   1.064818
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6338236   0.8636768   3.090716
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2779149   0.6717361   2.431113
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5623548   1.7263794   3.803140
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.6407638   1.0575004   2.545726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.8537678   1.9953264   4.081533
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4934785   0.9959013   2.239658


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037380   -0.0017580   0.0092339
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0520291    0.0306262   0.0734319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056583    0.0029478   0.0083689
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0042109   -0.0012717   0.0096935
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0020577   -0.0057644   0.0016490
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037097   -0.0017894   0.0092087
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0516599    0.0303044   0.0730154
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0057327    0.0030319   0.0084335


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1394197   -0.0883525   0.3195233
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4448349    0.2500892   0.5890067
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3164440    0.1561542   0.4462865
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1669490   -0.0755193   0.3547544
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0241742   -0.0667161   0.0166710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1383641   -0.0895892   0.3186271
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4416788    0.2490533   0.5848938
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3206035    0.1611614   0.4497396
