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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      190     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     266
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     266
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0      102    1360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        2    1360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      935    1360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      101    1360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      210    1360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1       10    1360
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      397     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1     640
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      455    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      514    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      483    1645
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       59    1645
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0    10177   13758
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       90   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0     1126   13758
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        4   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2345   13758
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1       16   13758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4693    9147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1916    9147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2377    9147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9147
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96     717
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426     717
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189     717
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     717
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               0      372   15795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               1       17   15795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                0    13489   15795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                1      827   15795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            0     1037   15795
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            1       53   15795
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               0       80     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg               1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                0       71     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                1        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            0       80     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg            1        2     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               0      103     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg               1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                0      111     283
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            0       69     283
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      190     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       29     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        1     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     265
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        0     265
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      115     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        1     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      399     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       11     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      109     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        2     637
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0      329     631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1        8     631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0      124     631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1        2     631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0      164     631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1        4     631
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               0        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                0       41      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                1        2      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            0        6      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            1        0      50
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               0      190     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg               1        1     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                0       30     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                1        0     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            0       44     266
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg            1        1     266
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               0       97     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg               1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                0       97     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            0       59     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg            1        0     253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               0      102    1360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg               1        2    1360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                0      935    1360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                1      101    1360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            0      210    1360
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg            1       10    1360
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               0       68     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg               1        1     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                0      340     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                1       44     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            0       79     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg            1        2     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               0      117     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg               1        0     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                0      397     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                1       14     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            0      111     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg            1        1     640
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               0      455    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg               1       32    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                0      514    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                1      102    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            0      483    1645
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg            1       59    1645
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               0    10177   13758
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg               1       90   13758
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                0     1126   13758
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                1        4   13758
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            0     2345   13758
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg            1       16   13758
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               0     4693    9147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg               1       57    9147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                0     1916    9147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                1       63    9147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            0     2377    9147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg            1       41    9147
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               0       96     717
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg               1        1     717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                0      426     717
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                1        3     717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            0      189     717
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg            1        2     717
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               0      372   15795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg               1       17   15795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                0    13489   15795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                1      827   15795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            0     1037   15795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg            1       53   15795


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
![](/tmp/6157b7ba-93c2-4422-aa93-5f034d5a2566/8114453a-8286-417e-9151-7c41eb45b3a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6157b7ba-93c2-4422-aa93-5f034d5a2566/8114453a-8286-417e-9151-7c41eb45b3a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6157b7ba-93c2-4422-aa93-5f034d5a2566/8114453a-8286-417e-9151-7c41eb45b3a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6157b7ba-93c2-4422-aa93-5f034d5a2566/8114453a-8286-417e-9151-7c41eb45b3a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230798   0.0150370   0.0311226
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0375493   0.0175110   0.0575876
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0298213   0.0138133   0.0458293
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0648759   0.0393193   0.0904326
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1665106   0.1223293   0.2106919
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1109266   0.0725563   0.1492968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0119827   0.0088424   0.0151230
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0332232   0.0250060   0.0414405
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0181719   0.0125158   0.0238280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0445526   0.0226497   0.0664555
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0577954   0.0535043   0.0620865
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0487756   0.0354744   0.0620768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0210117   0.0131679   0.0288554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0278638   0.0099107   0.0458168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362319   0.0182271   0.0542366
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0872199   0.0580268   0.1164131
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0736233   0.0469909   0.1002557
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0767565   0.0510440   0.1024690
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0230511   0.0150130   0.0310893
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0380189   0.0178031   0.0582347
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0297005   0.0137476   0.0456534
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0639133   0.0397618   0.0880649
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1673519   0.1231792   0.2115245
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1098554   0.0709069   0.1488038
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0119498   0.0088289   0.0150707
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0330242   0.0248488   0.0411996
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0181638   0.0125525   0.0237751
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0430179   0.0213754   0.0646603
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0578148   0.0535230   0.0621066
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0488259   0.0354804   0.0621714


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567901   0.0526750   0.0609052
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252226   0.0183864   0.0320587
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0851193   0.0573651   0.1128734
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268109   0.0199430   0.0336788
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176014   0.0149065   0.0202963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567901   0.0526750   0.0609052


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6269348   0.8601133   3.077405
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2920960   0.6813737   2.450215
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.5665999   1.7070500   3.858958
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.7098262   1.0991388   2.659815
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.7725928   1.9336570   3.975509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5165104   1.0095085   2.278142
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.2972382   0.7888264   2.133330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0947859   0.6244645   1.919334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3261094   0.6297729   2.792381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.7243693   0.9261992   3.210378
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           0.8441110   0.6685351   1.065798
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.8800336   0.7187409   1.077522
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6493295   0.8732118   3.115267
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2884613   0.6791585   2.444396
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.6184185   1.7659955   3.882295
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.7188176   1.1020604   2.680737
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.7635817   1.9282360   3.960814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5200094   1.0142980   2.277860
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3439720   0.8080571   2.235313
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1350144   0.6409071   2.010054


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037311   -0.0017649   0.0092272
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0524493    0.0307699   0.0741287
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056187    0.0029459   0.0082914
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0122375   -0.0094949   0.0339699
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0042109   -0.0012717   0.0096935
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0021007   -0.0059265   0.0017252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0037598   -0.0017344   0.0092539
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0534119    0.0315863   0.0752375
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0056516    0.0029955   0.0083077
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0137723   -0.0077034   0.0352479


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1391642   -0.0886062   0.3192780
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4470419    0.2486425   0.5930530
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3192169    0.1587349   0.4490849
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2154863   -0.2769179   0.5180099
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1669490   -0.0755193   0.3547544
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0246791   -0.0686757   0.0175062
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1402326   -0.0874513   0.3202454
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.4552463    0.2644584   0.5965469
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.3210886    0.1619342   0.4500186
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2425116   -0.2469982   0.5398641
