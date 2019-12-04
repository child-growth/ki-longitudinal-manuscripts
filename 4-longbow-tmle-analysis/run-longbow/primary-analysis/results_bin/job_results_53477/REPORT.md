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

agecat        studyid                    country                        mwtkg         ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       28     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       20     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1      113     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       23     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      106     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       37     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1       12     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       28     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        8     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       22     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       50     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1      100     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       29     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       60     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       22     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       62     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       42     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       73     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       20     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       51     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       86     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1      108     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1       24     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       16     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       30     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       17     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       81     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       11     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       88     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       52     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       68    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       45    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      295    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      865    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      105    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1      137    1515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       43     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      134     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      319     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       60     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       90     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       30     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      203     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      229     669
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8662   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1     1617   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      294   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1939   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      423   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3584   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     2259   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1009   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1     1399   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1498   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1     1455   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       59     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      145     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      359     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      105     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1      115     838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      405   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1      264   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0    12291   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1    12462   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0     1028   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1      746   27196
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       38     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       10     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       94     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       68     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       33     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       11     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      112     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1       31     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       35     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        7     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       28     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        8     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       32     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   0       95     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   1       55     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       31     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       19     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       66     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1       14     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       55     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       21     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       75     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        7     238
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       26     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       20     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       68     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       30     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       47     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       52     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       33     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       86    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       27    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      622    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      536    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0      165    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       76    1512
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       61     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       21     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      278     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      175     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       70     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       24     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      107     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       13     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      309     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      123     669
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4494   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1     1343   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     1505   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      900   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2030   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      918   11190
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       24     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0       95     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1       72     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       55     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       16     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      456   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1      212   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0    14307   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1    10385   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0     1163   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1      607   27130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       25     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1       10     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0       45     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       45     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       21     158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1       12     158
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      101     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        6     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       25     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        5     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       26     163
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     163
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       21     154
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1       10     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0       47     154
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       45     154
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       21     154
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1       10     154
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       58     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        8     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       36     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1       18     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       59     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1       15     194
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0       39     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1       23     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0       35     148
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1       19     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       16     148
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1       16     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0       78     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1       41     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0        6     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        7     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       13     155
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1       10     155
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       16     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       51     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0        8     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       36     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     144
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       62     811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1       18     811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      249     811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1      329     811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       92     811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1       61     811
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       34     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0       85     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1      144     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       28     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       36     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0       84     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1       17     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      169     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1      106     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0       66     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1       14     456
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     8655   12428
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      706   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      837   12428
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1      114   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1938   12428
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      178   12428
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3213    7378
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      916    7378
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0      879    7378
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      499    7378
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1334    7378
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      537    7378
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       55     728
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1       50     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      138     728
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1      287     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       99     728
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1       99     728
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  0      242   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                  1       52   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   0     7318   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                   1     2077   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               0      658   10486
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg               1      139   10486


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2e15d9f4-b44c-41ec-af49-5f7ec019659f/20354ab4-1546-4e58-96bd-0217cc685e3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e15d9f4-b44c-41ec-af49-5f7ec019659f/20354ab4-1546-4e58-96bd-0217cc685e3e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e15d9f4-b44c-41ec-af49-5f7ec019659f/20354ab4-1546-4e58-96bd-0217cc685e3e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e15d9f4-b44c-41ec-af49-5f7ec019659f/20354ab4-1546-4e58-96bd-0217cc685e3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4343610   0.2750785   0.5936434
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.6859273   0.6126782   0.7591764
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.4830097   0.3190335   0.6469860
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.2587413   0.1867992   0.3306833
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.2857143   0.1487806   0.4226479
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.4783550   0.3203214   0.6363886
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.6657765   0.5900548   0.7414983
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.5799365   0.4389723   0.7209006
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.2647492   0.1636747   0.3658237
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.5112027   0.3987016   0.6237038
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2619212   0.1639517   0.3598906
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.5864853   0.4896672   0.6833034
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.6077475   0.5165719   0.6989232
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.7348641   0.6176908   0.8520374
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.5567010   0.4866665   0.6267356
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.6521739   0.5142823   0.7900655
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8813559   0.7986816   0.9640303
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3786071   0.3025605   0.4546536
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.7443220   0.7017607   0.7868833
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.5678964   0.4959646   0.6398282
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4697126   0.3564562   0.5829690
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7078043   0.6657556   0.7498529
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6225248   0.5232267   0.7218228
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2425521   0.1607537   0.3243505
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.5372917   0.4900173   0.5845661
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3608731   0.2681855   0.4535606
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3333880   0.2635071   0.4032689
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.5535403   0.5046626   0.6024179
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.4750103   0.3909067   0.5591139
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3025214   0.2789881   0.3260547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4661908   0.4154326   0.5169491
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3844672   0.3395530   0.4293814
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2488551   0.0737151   0.4239951
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4498739   0.3919448   0.5078029
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3452098   0.3006506   0.3897690
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1590153   0.1385925   0.1794381
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2597556   0.2233911   0.2961200
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1826754   0.1571753   0.2081755
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3858745   0.3732487   0.3985004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5869273   0.5669114   0.6069432
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4979967   0.4795582   0.5164352
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.5256373   0.4346560   0.6166185
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.7120257   0.6723105   0.7517408
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.5200262   0.4529716   0.5870809
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.4131392   0.3769981   0.4492802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.5028117   0.4947167   0.5109068
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.4256932   0.4007329   0.4506536
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1993174   0.0799721   0.3186628
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4152850   0.3374789   0.4930911
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2121056   0.0881640   0.3360472
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.2167832   0.1490941   0.2844723
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2316756   0.1029377   0.3604135
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3641650   0.2865684   0.4417617
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3868179   0.2474304   0.5262055
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.0853659   0.0247591   0.1459726
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3462005   0.2550160   0.4373850
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.4637004   0.3683196   0.5590811
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.4769659   0.3465881   0.6073438
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3461954   0.2787964   0.4135945
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5563557   0.3664615   0.7462499
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4348403   0.2811682   0.5885124
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3024846   0.2080942   0.3968750
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5206453   0.4189417   0.6223489
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4609567   0.3266136   0.5952998
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2280835   0.1634006   0.2927663
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4630114   0.4241219   0.5019009
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3181739   0.2819621   0.3543858
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2481050   0.1504740   0.3457360
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3892746   0.3441121   0.4344371
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2575785   0.1683471   0.3468099
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1025085   0.0466832   0.1583338
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2841844   0.2414351   0.3269337
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2512768   0.1670772   0.3354763
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2156487   0.1534774   0.2778200
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3505984   0.3038253   0.3973715
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.3115294   0.2333796   0.3896792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1602328   0.1413896   0.1790759
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2813904   0.2355895   0.3271913
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2260638   0.1870927   0.2650350
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0897740   0.0762753   0.1032727
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1550423   0.1264745   0.1836100
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.1070662   0.0862348   0.1278977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2301278   0.2192183   0.2410373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3763497   0.3564268   0.3962726
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3158096   0.2986298   0.3329893
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1204950   0.4249596
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.4311377   0.3558881   0.5063873
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.2253521   0.1279867   0.3227175
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.3328159   0.2983290   0.3673028
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.4201458   0.4124260   0.4278656
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.3454390   0.3214341   0.3694440
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3125089   0.1444309   0.4805868
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4854105   0.3815183   0.5893026
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.3736621   0.2015818   0.5457423
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3471170   0.1593175   0.5349165
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.4949213   0.3907489   0.5990937
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.2921107   0.1274504   0.4567710
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1212121   0.0422692   0.2001551
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3333333   0.2072763   0.4593904
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2027027   0.1108706   0.2945348
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.3805349   0.2546728   0.5063970
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.3187583   0.1965790   0.4409376
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.5079892   0.3038408   0.7121376
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.3445378   0.2588789   0.4301967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665903   0.8103327
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.4347826   0.2315312   0.6380340
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587482   0.8636398
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038207   0.9325430
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7878788   0.6479116   0.9278459
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2101520   0.1138746   0.3064293
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.5687191   0.5213040   0.6161342
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.4087702   0.3078915   0.5096488
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3662181   0.2195743   0.5128619
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.6268238   0.5631641   0.6904836
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5514143   0.4272103   0.6756184
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1773628   0.1000192   0.2547063
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.3912624   0.3331785   0.4493462
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1646551   0.0727361   0.2565741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1640681   0.1014696   0.2266665
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3302845   0.2710496   0.3895194
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2457703   0.1580317   0.3335088
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2038418   0.1793016   0.2283820
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3272404   0.2639314   0.3905493
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2422632   0.1936632   0.2908633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2486755   0.0772337   0.4201173
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4509519   0.3935390   0.5083648
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3446330   0.3003393   0.3889267
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0759751   0.0609558   0.0909944
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1247807   0.0997064   0.1498549
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0841804   0.0663874   0.1019735
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2213824   0.2085591   0.2342058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3758017   0.3495814   0.4020221
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2907006   0.2693886   0.3120126
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4817381   0.3865467   0.5769296
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.6753680   0.6306436   0.7200923
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.4967834   0.4260833   0.5674835
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1968629   0.1496253   0.2441005
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.2203749   0.2103600   0.2303898
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1826483   0.1525743   0.2127224


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2579186   0.2001084   0.3157287
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3487395   0.2880656   0.4094134
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6000000   0.5414566   0.6585434
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8632812   0.8211147   0.9054478
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6910891   0.6503148   0.7318634
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3465136   0.3272783   0.3657490
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1694743   0.1504830   0.1884655
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4563549   0.4471315   0.4655783
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6360382   0.6034429   0.6686335
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4953670   0.4875503   0.5031837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2081448   0.1544982   0.2617914
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1764706   0.1279362   0.2250050
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3851852   0.3270313   0.4433391
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4226190   0.3935114   0.4517267
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943027   0.1783091   0.2102964
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0970084   0.0840167   0.1100001
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2824844   0.2741425   0.2908263
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4129746   0.4055418   0.4204074
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030826   0.4587775   0.5473878
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2277354   0.2069978   0.2484730
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0803025   0.0658938   0.0947113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2645703   0.2545045   0.2746362
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5989011   0.5632737   0.6345285
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2162884   0.2069101   0.2256667


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.5791642   1.0753006   2.319128
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.1120007   0.6747522   1.832592
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           1.1042471   0.6344996   1.921769
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           0.8588589   0.4383144   1.682898
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.3918042   0.9812078   1.974219
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.2123557   0.8044313   1.827137
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.9308938   1.2412534   3.003698
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.9893179   0.5772880   1.695428
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.0362536   0.8276177   1.297485
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.2529966   0.9961886   1.576007
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.4370370   1.1544123   1.788854
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1714976   0.9159929   1.498272
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0663319   0.9357728   1.215107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9659484   1.6599204   2.328397
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.4999626   1.1532467   1.950916
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5068879   1.1755116   1.931679
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3253311   0.9925866   1.769621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.2151602   1.5631120   3.139209
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.4878168   0.9737355   2.273306
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6603485   1.3224298   2.084615
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.4247973   1.0827193   1.874953
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5410175   1.3479048   1.761797
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2708759   1.1043736   1.462481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8077745   0.8805639   3.711313
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3871923   0.6764597   2.844667
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6335255   1.4642034   1.822428
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1487913   1.0039900   1.314477
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5210315   1.4508385   1.594620
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2905664   1.2283827   1.355898
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.3545951   1.1292736   1.624874
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.9893252   0.7972779   1.227633
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.2170518   1.1140868   1.329533
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0303870   0.9297324   1.141939
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.0835357   1.1090005   3.914445
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.0641598   0.4615283   2.453666
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           0.7688172   0.3645275   1.621496
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           1.0250896   0.5154428   2.038652
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5718746   0.8672817   2.848889
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.6696532   0.8607394   3.238776
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           0.4878049   0.2074125   1.147248
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.3393983   0.9583416   1.871971
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3777159   0.9418283   2.015337
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.6070567   1.0845364   2.381323
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2560544   0.8390454   1.880319
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7212291   1.1899141   2.489785
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5239014   0.9929255   2.338822
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.0300085   1.4436628   2.854499
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3949890   1.0145101   1.918162
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5689914   1.0408000   2.365232
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0381836   0.6144241   1.754204
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.7723012   1.5757256   4.877533
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           2.4512775   1.2927560   4.648025
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.6257848   1.1832037   2.233915
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.4446153   0.9856523   2.117291
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7561349   1.4364277   2.147000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4108464   1.1450425   1.738353
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.7270284   1.4659072   2.034663
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1926192   0.9946124   1.430045
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6353940   1.5232178   1.755831
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3723224   1.2767723   1.475023
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.5808383   0.8808382   2.837127
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.8262911   0.4079244   1.673734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.2623969   1.1367341   1.401951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0379282   0.9204314   1.170424
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.5532695   0.8679429   2.779729
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.1956847   0.5896234   2.424704
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.4258054   0.7956949   2.554900
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           0.8415338   0.3858401   1.835421
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7500000   1.2949713   5.839898
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.6722973   0.7564231   3.697108
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.8376586   0.5023755   1.396708
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.3349346   0.7910948   2.252638
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           1.5628518   0.8902225   2.743702
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2619300   0.7431657   2.142816
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852895   1.305039
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0350564   0.8282680   1.293473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.7062280   1.7966862   4.076210
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.9451171   1.1764403   3.216041
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7116135   1.1322145   2.587514
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.5056993   0.9508158   2.384406
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.2060006   1.3925186   3.494703
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.9283519   0.4569098   1.886230
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.0130943   1.3216262   3.066335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.4979776   0.8887013   2.524962
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6053646   1.2782022   2.016266
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1884868   0.9405427   1.501793
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8134151   0.8964292   3.668415
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3858742   0.6859403   2.800021
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.6423892   1.3854184   1.947024
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1080004   0.9198528   1.334632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6975229   1.5504407   1.858558
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3131149   1.1960071   1.441690
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4019400   1.1383217   1.726608
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0312312   0.8084526   1.315399
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.1194332   0.8759347   1.430621
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           0.9277946   0.6958030   1.237136


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1798123    0.0334614   0.3261631
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0008227   -0.0434813   0.0418359
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1373475   -0.0057200   0.2804149
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0839903   -0.0017207   0.1697012
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0548940   -0.0243245   0.1341126
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0432990    0.0074698   0.0791281
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0367506   -0.0189308   0.0924320
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.3124820    0.2481510   0.3768131
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1948343    0.0896504   0.3000181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2103627    0.1333471   0.2873784
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.1460822    0.0840610   0.2081035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0439922    0.0286591   0.0593252
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1077991   -0.0291438   0.2447421
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0104590    0.0058315   0.0150865
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0704803    0.0614282   0.0795325
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1104009    0.0262340   0.1945678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0822278    0.0465591   0.1178965
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1510763    0.0376452   0.2645073
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0086384   -0.0477583   0.0304815
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1154318   -0.0047845   0.2356482
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0014706   -0.0666265   0.0695677
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0951788    0.0188338   0.1715238
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0389897    0.0009941   0.0769854
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1193904    0.0409008   0.1978801
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1945356    0.1117394   0.2773317
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1016565    0.0090375   0.1942756
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1456230    0.0897655   0.2014806
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0876625    0.0310369   0.1442882
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0340700    0.0209524   0.0471875
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0072344    0.0031103   0.0113585
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0523565    0.0441671   0.0605460
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0801587    0.0460685   0.1142488
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.1115418   -0.0420125   0.2650960
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.0749609   -0.0962988   0.2462206
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0901281    0.0172641   0.1629921
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0113570   -0.0877754   0.1104894
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0296557   -0.0140735   0.0733850
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0235282   -0.0490455   0.0961019
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2929306    0.2195259   0.3663354
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2076949    0.0707535   0.3446364
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.1230758    0.0503055   0.1958461
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0987778    0.0424549   0.1551006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0238936    0.0084214   0.0393658
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1079787   -0.0253172   0.2412746
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0043274    0.0010251   0.0076298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0431879    0.0339269   0.0524489
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1171630    0.0292769   0.2050490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0194255   -0.0276069   0.0664578


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.2927712    0.0062217   0.4966961
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0031898   -0.1830006   0.1492905
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.2230744   -0.0504611   0.4253825
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.2408395   -0.0497997   0.4510147
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0855875   -0.0469469   0.2013441
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0097011   0.1306889
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0425709   -0.0245477   0.1052924
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4521588    0.3463446   0.5408438
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2931836    0.1136933   0.4363245
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4644642    0.2643563   0.6101393
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.3046742    0.1615673   0.4233552
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1269565    0.0816206   0.1700544
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3022511   -0.2635259   0.6146866
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0617143    0.0317743   0.0907284
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1544419    0.1342660   0.1741477
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1735759    0.0294632   0.2962897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.1659937    0.0908767   0.2349041
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.4311615    0.0007074   0.6761937
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0415020   -0.2473085   0.1303464
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.3325536   -0.1194883   0.6020640
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0083333   -0.4633876   0.3279957
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2156395    0.0224534   0.3706475
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.1012234   -0.0032649   0.1948294
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2829995    0.0699472   0.4472467
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.4603095    0.2548178   0.6091348
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2906453   -0.0301407   0.5115385
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5868784    0.3040714   0.7547601
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2890184    0.0766906   0.4525185
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1753447    0.1060438   0.2392733
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0745751    0.0301998   0.1169200
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1853431    0.1560277   0.2136402
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.1941007    0.1073095   0.2724537
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.2630388   -0.2054727   0.5494616
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1775997   -0.3487725   0.4985498
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.4264597   -0.0212821   0.6779064
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0289799   -0.2599690   0.2516641
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0792524   -0.0454791   0.1891027
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0299828   -0.0672917   0.1183916
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.5822715    0.3749845   0.7208115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3618927    0.0691824   0.5625556
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.4096538    0.1153167   0.6060640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.3758012    0.1232621   0.5555979
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1049183    0.0346897   0.1700375
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3027547   -0.2446756   0.6094155
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0538893    0.0099620   0.0958675
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1632379    0.1277043   0.1973241
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1956299    0.0339415   0.3302567
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0898128   -0.1554727   0.2830287
