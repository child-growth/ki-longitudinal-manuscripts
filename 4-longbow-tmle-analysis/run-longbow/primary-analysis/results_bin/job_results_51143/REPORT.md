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

agecat        studyid                    country                        mwtkg         ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       29     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       19     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1      113     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      110     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       33     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       31     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       23     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       51     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       99     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       62     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       73     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       20     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       51     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       88     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1      106     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1       24     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       17     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       29     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       17     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       81     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       88     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       51     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       62    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       47    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      300    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      868    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      106    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1      131    1514
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       43     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      134     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      319     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       60     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       90     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       30     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      204     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      228     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       73     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       44     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      125     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       67     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      184     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1      222     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0       84     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       73     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1028    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      448    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      211    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      182    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      298    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      185    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      701    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      230    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      652    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      537    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      693    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      364    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8662   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1     1617   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      294   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1939   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      423   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3709   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     2134   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1054   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1     1354   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1560   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1     1393   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       59     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      145     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      359     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      105     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1      115     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       38     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       95     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       67     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       33     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       11     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      115     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       28     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       35     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       30     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        6     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       32     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   0       96     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   1       54     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       31     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       66     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       14     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       55     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       21     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       76     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        6     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  0       65     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  1       39     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   0       61     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   1       54     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               0       36     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               1       35     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      127     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1       67     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       13     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       19     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       68     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       30     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       47     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       52     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       25     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       85    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       24    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      624    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      541    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      163    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       74    1511
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       61     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       21     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      278     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      175     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       70     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       24     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      107     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       13     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      310     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      122     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       87     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       30     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      153     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       39     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      262     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1      144     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      111     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       46     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1240    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      236    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      280    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      113    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      375    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      108    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  0     9368   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  1      911   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   0      951   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   1      180   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               0     2117   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               1      245   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4498   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     1337   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1507   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      898   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2033   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      915   11188
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       24     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0       95     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       55     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       16     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       26     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        9     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       45     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       46     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       12     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      105     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       26     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       28     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     168
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       48     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       45     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       10     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        8     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       36     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       18     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       60     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       15     195
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       39     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       23     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       35     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       19     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       16     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       16     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       80     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1       39     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       14     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       10     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       16     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       51     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       36     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       56     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       23     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      252     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      327     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       95     810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       57     810
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       34     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0       85     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      144     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       28     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       36     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       84     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       17     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      170     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      106     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       66     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       14     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      121     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1       28     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      173     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       78     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0       79     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1       27     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0      829    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      212    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      147    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       69    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      238    1572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       77    1572
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      701    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      230    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      652    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      537    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      693    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      364    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8655   12428
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      706   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      114   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1938   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      178   12428
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3098    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      797    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0      889    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      456    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1317    7035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      478    7035
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     728
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       50     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      138     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      287     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       99     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       99     728


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

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6138d767-4880-402c-a83d-094826f34b5d/32b0830d-66e3-4c07-b88c-70cd8152cdfd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6138d767-4880-402c-a83d-094826f34b5d/32b0830d-66e3-4c07-b88c-70cd8152cdfd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6138d767-4880-402c-a83d-094826f34b5d/32b0830d-66e3-4c07-b88c-70cd8152cdfd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6138d767-4880-402c-a83d-094826f34b5d/32b0830d-66e3-4c07-b88c-70cd8152cdfd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4213260   0.2687204   0.5739316
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.6763716   0.6027385   0.7500048
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.4659037   0.3132202   0.6185871
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.2307692   0.1615571   0.2999813
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.2619048   0.1286336   0.3951759
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.4550787   0.2916248   0.6185326
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.6630146   0.5869871   0.7390420
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.5731055   0.4300192   0.7161918
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.2721054   0.1717068   0.3725039
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.5153976   0.4012655   0.6295298
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2580993   0.1623258   0.3538727
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.5828289   0.4850265   0.6806314
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.6098877   0.5198192   0.6999563
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.7300417   0.6131532   0.8469302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.5463918   0.4762066   0.6165769
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.6304348   0.4906884   0.7701812
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8644068   0.7768782   0.9519354
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4217568   0.3325481   0.5109655
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.7431894   0.7003517   0.7860272
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.5549121   0.4782364   0.6315877
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4674401   0.3545922   0.5802880
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7078724   0.6658670   0.7498778
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6263420   0.5279871   0.7246969
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2456091   0.1652091   0.3260090
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5352339   0.4880764   0.5823913
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3556375   0.2660065   0.4452685
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3395081   0.2707134   0.4083027
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5573555   0.5087537   0.6059573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.4715155   0.3899839   0.5530472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3039668   0.2803373   0.3275963
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4687737   0.4176399   0.5199074
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3856279   0.3412224   0.4300334
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2483573   0.0683565   0.4283582
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4503329   0.3917996   0.5088663
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3441115   0.3006136   0.3876094
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1589908   0.1385960   0.1793856
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2574244   0.2209066   0.2939423
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1822357   0.1571676   0.2073039
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3660559   0.3535904   0.3785214
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5688430   0.5487530   0.5889330
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4752667   0.4569434   0.4935900
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.5085223   0.4164813   0.6005632
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.7124049   0.6727653   0.7520444
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5189725   0.4520867   0.5858583
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2027494   0.0848058   0.3206931
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4137321   0.3364537   0.4910106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2149099   0.0894802   0.3403396
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.1958042   0.1306178   0.2609906
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.1666667   0.0446511   0.2886823
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2301091   0.0992818   0.3609363
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3624896   0.2850353   0.4399439
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3692933   0.2297490   0.5088376
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.0731707   0.0166869   0.1296545
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3606294   0.2679008   0.4533579
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4573542   0.3644136   0.5502948
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4894896   0.3564809   0.6224983
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3449036   0.2776136   0.4121935
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5513757   0.3688090   0.7339423
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.3985578   0.2495005   0.5476152
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3072160   0.2127189   0.4017132
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5135734   0.4105886   0.6165582
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4311389   0.2989505   0.5633273
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2043582   0.1568228   0.2518936
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4642124   0.4221155   0.5063092
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3112408   0.2453520   0.3771296
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2361421   0.1381640   0.3341202
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3902729   0.3452162   0.4353295
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2601637   0.1714074   0.3489199
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1081714   0.0507502   0.1655926
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2825054   0.2399423   0.3250685
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2443933   0.1610263   0.3277602
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2191021   0.1579804   0.2802239
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3516372   0.3046928   0.3985817
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2998955   0.2223623   0.3774286
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1607016   0.1417753   0.1796280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2876398   0.2406775   0.3346021
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2263870   0.1879351   0.2648389
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0897751   0.0762470   0.1033033
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1520274   0.1234919   0.1805629
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1068571   0.0865968   0.1271175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2296752   0.2187813   0.2405692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3749730   0.3551010   0.3948450
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3116566   0.2945545   0.3287588
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1204950   0.4249596
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4311377   0.3558881   0.5063873
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2253521   0.1279867   0.3227175
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.2571429   0.1118902   0.4023955
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.5054945   0.4024461   0.6085429
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.3636364   0.1989918   0.5282810
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2903226   0.1300188   0.4506263
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4838710   0.3819752   0.5857667
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3225806   0.1574907   0.4876706
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1212121   0.0422702   0.2001540
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3333333   0.2072780   0.4593887
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2000000   0.1092401   0.2907599
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3846348   0.2594127   0.5098568
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.3266279   0.2059067   0.4473490
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4960874   0.2927786   0.6993963
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3277311   0.2431250   0.4123371
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665960   0.8103271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4166667   0.2187913   0.6145420
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587507   0.8636374
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038234   0.9325402
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7647059   0.6216308   0.9077810
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2756456   0.1792994   0.3719919
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5652936   0.5180496   0.6125375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3752302   0.2802603   0.4702002
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3748909   0.2205209   0.5292608
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6268505   0.5635222   0.6901789
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5313603   0.4056597   0.6570609
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1762786   0.0982565   0.2543007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.3905103   0.3323820   0.4486385
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1705057   0.0781253   0.2628861
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1672680   0.1052837   0.2292523
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3315130   0.2721250   0.3909010
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2604397   0.1704298   0.3504495
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2043891   0.1797454   0.2290328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3217927   0.2569093   0.3866761
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2444232   0.1956321   0.2932143
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2490312   0.0635762   0.4344863
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4504401   0.3928459   0.5080344
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3432742   0.2995325   0.3870158
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0760068   0.0610245   0.0909891
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1208060   0.0963904   0.1452215
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0849572   0.0670117   0.1029026
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2057179   0.1928617   0.2185741
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3470750   0.3209379   0.3732120
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2691393   0.2481188   0.2901599
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4799606   0.3837509   0.5761703
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.6760892   0.6314501   0.7207282
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5022790   0.4319355   0.5726225


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2262443   0.1709568   0.2815319
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3445378   0.2840363   0.4050393
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5888889   0.5300901   0.6476877
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8593750   0.8167072   0.9020428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908851   0.6500577   0.7317124
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3465136   0.3272783   0.3657490
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1694743   0.1504830   0.1884655
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4356480   0.4264663   0.4448297
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6360382   0.6034429   0.6686335
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1855204   0.1341547   0.2368860
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1722689   0.1241936   0.2203442
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4228987   0.3938571   0.4519404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943027   0.1783091   0.2102964
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970084   0.0840167   0.1100001
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2815517   0.2732174   0.2898859
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024691   0.4579693   0.5469690
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2277354   0.2069978   0.2484730
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0803025   0.0658938   0.0947113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2460554   0.2359900   0.2561209
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5989011   0.5632737   0.6345285


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.6053402   1.0973894   2.348407
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.1058032   0.6792111   1.800325
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           1.1349206   0.6287002   2.048743
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.7222222   0.3274012   1.593167
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4569230   0.9990835   2.124572
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2593548   0.8128867   1.951040
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.8941104   1.2300588   2.916653
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.9485269   0.5610099   1.603721
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.0464267   0.8356270   1.310404
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2525831   0.9932572   1.579616
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.4641509   1.1743924   1.825402
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1538146   0.8930418   1.490734
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0458255   0.9127860   1.198256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.7621280   1.4263218   2.176995
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3157158   0.9409308   1.839783
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5143596   1.1808903   1.941997
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3399406   1.0052278   1.786104
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.1792107   1.5525046   3.058902
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4479821   0.9579985   2.188576
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6416562   1.3165250   2.047082
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3888199   1.0644610   1.812016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5421870   1.3488627   1.763219
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2686513   1.1040303   1.457819
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8132461   0.8685732   3.785359
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3855500   0.6629980   2.895557
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6191152   1.4502118   1.807690
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1462029   1.0051000   1.307115
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5539787   1.4796031   1.632093
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2983447   1.2332690   1.366854
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4009315   1.1592885   1.692943
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0205502   0.8173470   1.274272
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.0406082   1.1057039   3.766001
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.0599778   0.4657067   2.412576
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           0.8511905   0.4000147   1.811247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.8511905   0.3808482   1.902399
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5752947   0.8580311   2.892149
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.6048620   0.8103015   3.178548
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.4181185   0.1687547   1.035959
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.2682113   0.9135015   1.760654
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3573204   0.9330193   1.974577
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.5986372   1.0886216   2.347593
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1555631   0.7580018   1.761640
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6717012   1.1562337   2.416972
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4033738   0.9086670   2.167414
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.2715625   1.6738784   3.082659
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.5230159   1.1108609   2.088090
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6527035   1.0744336   2.542203
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.1017251   0.6440802   1.884545
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6116464   1.5040970   4.534745
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           2.2593154   1.2026968   4.244217
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6049010   1.1778314   2.186822
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3687474   0.9357052   2.002201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7898994   1.4633788   2.189276
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4087410   1.1456270   1.732284
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6934245   1.4334127   2.000601
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1902756   0.9958180   1.422706
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6326226   1.5205247   1.752985
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3569449   1.2620131   1.459018
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.5808383   0.8808382   2.837127
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.8262911   0.4079244   1.673734
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.9658120   1.0782881   3.583844
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.4141414   0.6856329   2.916715
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.6666667   0.9230003   3.009509
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.1111111   0.5233538   2.358955
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7500000   1.2949842   5.839839
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.6500000   0.7460183   3.649374
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.8491897   0.5178166   1.392623
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2897623   0.7620995   2.182768
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6429980   0.9318888   2.896743
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2713675   0.7404925   2.182838
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852937   1.305033
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0046136   0.7978212   1.265006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.0507980   1.4551990   2.890170
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3612775   0.7971136   2.324733
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6720881   1.0948520   2.553659
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.4173733   0.8810870   2.280078
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.2153016   1.3891315   3.532827
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.9672512   0.4804929   1.947115
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.9819270   1.3148206   2.987506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.5570200   0.9389171   2.582029
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5744124   1.2446611   1.991526
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1958721   0.9470716   1.510034
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8087695   0.8499391   3.849273
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3784381   0.6478516   2.932912
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5894089   1.3321792   1.896307
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1177567   0.9278418   1.346544
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6871402   1.5298117   1.860649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3082932   1.1837690   1.445917
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4086346   1.1409112   1.739181
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0465004   0.8192551   1.336779


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1889102    0.0492120   0.3286084
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0045249   -0.0451180   0.0360682
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1523593    0.0035521   0.3011666
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0724325   -0.0121012   0.1569661
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0585504   -0.0210667   0.1381675
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0424971    0.0063797   0.0786146
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0328444   -0.0232176   0.0889064
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2691283    0.1734345   0.3648221
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1971068    0.0924007   0.3018129
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2058110    0.1304060   0.2812159
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1399621    0.0790026   0.2009217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0425468    0.0271522   0.0579414
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1076389   -0.0338924   0.2491702
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0104835    0.0058675   0.0150995
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0695921    0.0606090   0.0785752
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1275159    0.0423558   0.2126760
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1437073    0.0319687   0.2554459
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0102838   -0.0475484   0.0269807
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1128661   -0.0093035   0.2350357
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0027311   -0.0705017   0.0650396
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0807500    0.0034228   0.1580771
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0365779   -0.0010412   0.0741971
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1107527    0.0321799   0.1893256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2185406    0.1469773   0.2901039
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1136194    0.0207103   0.2065285
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1384654    0.0814572   0.1954736
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0842091    0.0285015   0.1399168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0336011    0.0204292   0.0467730
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0072333    0.0030882   0.0113784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0518764    0.0436969   0.0600559
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1642408    0.0310577   0.2974239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1225806   -0.0239297   0.2690910
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0890443    0.0162340   0.1618546
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0072571   -0.0903531   0.1048673
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0312433   -0.0128063   0.0752928
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0181163   -0.0552606   0.0914932
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2268235    0.1283739   0.3252731
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1990222    0.0545555   0.3434888
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1235026    0.0498280   0.1971771
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0955778    0.0397635   0.1513921
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0233463    0.0077892   0.0389034
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1069650   -0.0401566   0.2540866
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0042957    0.0010142   0.0075772
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0403375    0.0309529   0.0497222
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1189405    0.0301514   0.2077295


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3095690    0.0348999   0.5060668
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0200000   -0.2161373   0.1445045
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2508229   -0.0422622   0.4614921
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.2102308   -0.0777194   0.4212450
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0912882   -0.0421828   0.2076658
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0080152   0.1321663
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0382189   -0.0295971   0.1015681
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.3895413    0.2424104   0.5080980
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2966033    0.1178454   0.4391381
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4559190    0.2603683   0.5997682
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2919100    0.1519480   0.4087727
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1227854    0.0772529   0.1660711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3023597   -0.2889504   0.6224044
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0618589    0.0320157   0.0907820
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1597439    0.1387882   0.1801896
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2004847    0.0539216   0.3243427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.4147914   -0.0099816   0.6609155
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0554324   -0.2763152   0.1272238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.3290795   -0.1394314   0.6049483
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0158537   -0.4962710   0.3103130
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.1829491   -0.0122506   0.3405070
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0958839   -0.0085551   0.1895079
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2649785    0.0504394   0.4310457
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.5167681    0.3563466   0.6372068
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3248483   -0.0008381   0.5445519
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5614142    0.2714694   0.7359651
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2776327    0.0700493   0.4388794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1729316    0.1032762   0.2371763
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0745635    0.0299067   0.1171647
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1842519    0.1548802   0.2126027
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.3897655   -0.0228150   0.6359203
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2968750   -0.1645763   0.5754810
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.4235033   -0.0266294   0.6762723
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0185182   -0.2650250   0.2385078
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0870348   -0.0443387   0.2018821
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0232466   -0.0757380   0.1131230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4514178    0.2258007   0.6112855
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3467811    0.0360739   0.5573365
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4119757    0.1122986   0.6104855
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.3636269    0.1152284   0.5422879
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1025150    0.0318592   0.1680143
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3004666   -0.3190974   0.6290289
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0534939    0.0099479   0.0951247
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1639368    0.1251924   0.2009652
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1985979    0.0349480   0.3344966
