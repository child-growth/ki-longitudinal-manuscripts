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

agecat        studyid          country                        mwtkg         ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      405   27196
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1      264   27196
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0    12291   27196
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1    12462   27196
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0     1028   27196
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1      746   27196
0-24 months   LCNI-5           MALAWI                         >=58 kg                  0       55     838
0-24 months   LCNI-5           MALAWI                         >=58 kg                  1       59     838
0-24 months   LCNI-5           MALAWI                         <52 kg                   0      145     838
0-24 months   LCNI-5           MALAWI                         <52 kg                   1      359     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg               0      105     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg               1      115     838
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       28     254
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1       20     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   0       49     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   1      113     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       21     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1       23     254
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      106     221
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  1       37     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                   0       30     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                   1       12     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       28     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        8     221
0-24 months   MAL-ED           INDIA                          >=58 kg                  0       22     242
0-24 months   MAL-ED           INDIA                          >=58 kg                  1       20     242
0-24 months   MAL-ED           INDIA                          <52 kg                   0       50     242
0-24 months   MAL-ED           INDIA                          <52 kg                   1      100     242
0-24 months   MAL-ED           INDIA                          [52-58) kg               0       21     242
0-24 months   MAL-ED           INDIA                          [52-58) kg               1       29     242
0-24 months   MAL-ED           NEPAL                          >=58 kg                  0       58     238
0-24 months   MAL-ED           NEPAL                          >=58 kg                  1       22     238
0-24 months   MAL-ED           NEPAL                          <52 kg                   0       37     238
0-24 months   MAL-ED           NEPAL                          <52 kg                   1       39     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg               0       60     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg               1       22     238
0-24 months   MAL-ED           PERU                           >=58 kg                  0       42     290
0-24 months   MAL-ED           PERU                           >=58 kg                  1       62     290
0-24 months   MAL-ED           PERU                           <52 kg                   0       42     290
0-24 months   MAL-ED           PERU                           <52 kg                   1       73     290
0-24 months   MAL-ED           PERU                           [52-58) kg               0       20     290
0-24 months   MAL-ED           PERU                           [52-58) kg               1       51     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0       86     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1      108     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0        6     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1       24     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       16     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1       30     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       17     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       81     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       11     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       88     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       52     256
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       43     629
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1       39     629
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0      134     629
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1      319     629
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       34     629
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1       60     629
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      125     755
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1       67     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      184     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1      222     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0       84     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1       73     755
0-24 months   PROBIT           BELARUS                        >=58 kg                  0     9047   13772
0-24 months   PROBIT           BELARUS                        >=58 kg                  1     1232   13772
0-24 months   PROBIT           BELARUS                        <52 kg                   0      914   13772
0-24 months   PROBIT           BELARUS                        <52 kg                   1      217   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg               0     2035   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg               1      327   13772
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0       90     669
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1       30     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      203     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   1      229     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0       73     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1       44     669
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       68    1515
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       45    1515
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      295    1515
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      865    1515
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      105    1515
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1      137    1515
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1028    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      448    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      211    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      182    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      298    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      185    2352
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3584   11204
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1     2259   11204
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0     1009   11204
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1     1399   11204
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1498   11204
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1     1455   11204
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  0      456   27130
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  1      212   27130
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   0    14307   27130
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   1    10385   27130
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               0     1163   27130
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               1      607   27130
0-6 months    LCNI-5           MALAWI                         >=58 kg                  0       24     271
0-6 months    LCNI-5           MALAWI                         >=58 kg                  1        9     271
0-6 months    LCNI-5           MALAWI                         <52 kg                   0       95     271
0-6 months    LCNI-5           MALAWI                         <52 kg                   1       72     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg               0       55     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg               1       16     271
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  0       38     254
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  1       10     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   0       94     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   1       68     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               0       33     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               1       11     254
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  0      112     221
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  1       31     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                   0       35     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                   1        7     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               0       28     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               1        8     221
0-6 months    MAL-ED           INDIA                          >=58 kg                  0       32     242
0-6 months    MAL-ED           INDIA                          >=58 kg                  1       10     242
0-6 months    MAL-ED           INDIA                          <52 kg                   0       95     242
0-6 months    MAL-ED           INDIA                          <52 kg                   1       55     242
0-6 months    MAL-ED           INDIA                          [52-58) kg               0       31     242
0-6 months    MAL-ED           INDIA                          [52-58) kg               1       19     242
0-6 months    MAL-ED           NEPAL                          >=58 kg                  0       66     238
0-6 months    MAL-ED           NEPAL                          >=58 kg                  1       14     238
0-6 months    MAL-ED           NEPAL                          <52 kg                   0       55     238
0-6 months    MAL-ED           NEPAL                          <52 kg                   1       21     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg               0       75     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg               1        7     238
0-6 months    MAL-ED           PERU                           >=58 kg                  0       65     290
0-6 months    MAL-ED           PERU                           >=58 kg                  1       39     290
0-6 months    MAL-ED           PERU                           <52 kg                   0       61     290
0-6 months    MAL-ED           PERU                           <52 kg                   1       54     290
0-6 months    MAL-ED           PERU                           [52-58) kg               0       36     290
0-6 months    MAL-ED           PERU                           [52-58) kg               1       35     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  0      127     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  1       67     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   0       13     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   1       17     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               0       26     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               1       20     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       68     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       30     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       47     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       52     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       33     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     256
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  0       61     629
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  1       21     629
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   0      278     629
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   1      175     629
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               0       70     629
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               1       24     629
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  0      153     755
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  1       39     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   0      262     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   1      144     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               0      111     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               1       46     755
0-6 months    PROBIT           BELARUS                        >=58 kg                  0     9655   13772
0-6 months    PROBIT           BELARUS                        >=58 kg                  1      624   13772
0-6 months    PROBIT           BELARUS                        <52 kg                   0     1014   13772
0-6 months    PROBIT           BELARUS                        <52 kg                   1      117   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg               0     2195   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg               1      167   13772
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  0      107     669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  1       13     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   0      309     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   1      123     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               0       87     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               1       30     669
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  0       86    1512
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  1       27    1512
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   0      622    1512
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   1      536    1512
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               0      165    1512
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               1       76    1512
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1240    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      236    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      280    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      113    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      375    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      108    2352
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4494   11190
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  1     1343   11190
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   0     1505   11190
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   1      900   11190
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2030   11190
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               1      918   11190
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      242   10486
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1       52   10486
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0     7318   10486
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1     2077   10486
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0      658   10486
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1      139   10486
6-24 months   LCNI-5           MALAWI                         >=58 kg                  0       55     728
6-24 months   LCNI-5           MALAWI                         >=58 kg                  1       50     728
6-24 months   LCNI-5           MALAWI                         <52 kg                   0      138     728
6-24 months   LCNI-5           MALAWI                         <52 kg                   1      287     728
6-24 months   LCNI-5           MALAWI                         [52-58) kg               0       99     728
6-24 months   LCNI-5           MALAWI                         [52-58) kg               1       99     728
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       25     158
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1       10     158
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   0       45     158
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   1       45     158
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       21     158
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1       12     158
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      101     163
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  1        6     163
6-24 months   MAL-ED           BRAZIL                         <52 kg                   0       25     163
6-24 months   MAL-ED           BRAZIL                         <52 kg                   1        5     163
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       26     163
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        0     163
6-24 months   MAL-ED           INDIA                          >=58 kg                  0       21     154
6-24 months   MAL-ED           INDIA                          >=58 kg                  1       10     154
6-24 months   MAL-ED           INDIA                          <52 kg                   0       47     154
6-24 months   MAL-ED           INDIA                          <52 kg                   1       45     154
6-24 months   MAL-ED           INDIA                          [52-58) kg               0       21     154
6-24 months   MAL-ED           INDIA                          [52-58) kg               1       10     154
6-24 months   MAL-ED           NEPAL                          >=58 kg                  0       58     194
6-24 months   MAL-ED           NEPAL                          >=58 kg                  1        8     194
6-24 months   MAL-ED           NEPAL                          <52 kg                   0       36     194
6-24 months   MAL-ED           NEPAL                          <52 kg                   1       18     194
6-24 months   MAL-ED           NEPAL                          [52-58) kg               0       59     194
6-24 months   MAL-ED           NEPAL                          [52-58) kg               1       15     194
6-24 months   MAL-ED           PERU                           >=58 kg                  0       39     148
6-24 months   MAL-ED           PERU                           >=58 kg                  1       23     148
6-24 months   MAL-ED           PERU                           <52 kg                   0       35     148
6-24 months   MAL-ED           PERU                           <52 kg                   1       19     148
6-24 months   MAL-ED           PERU                           [52-58) kg               0       16     148
6-24 months   MAL-ED           PERU                           [52-58) kg               1       16     148
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0       78     155
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1       41     155
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0        6     155
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1        7     155
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       13     155
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1       10     155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       16     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       51     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0        8     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       36     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     144
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       34     345
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1       18     345
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0       85     345
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1      144     345
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       28     345
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1       36     345
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      121     506
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1       28     506
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      173     506
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1       78     506
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0       79     506
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1       27     506
6-24 months   PROBIT           BELARUS                        >=58 kg                  0     9040   12856
6-24 months   PROBIT           BELARUS                        >=58 kg                  1      608   12856
6-24 months   PROBIT           BELARUS                        <52 kg                   0      914   12856
6-24 months   PROBIT           BELARUS                        <52 kg                   1      100   12856
6-24 months   PROBIT           BELARUS                        [52-58) kg               0     2034   12856
6-24 months   PROBIT           BELARUS                        [52-58) kg               1      160   12856
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0       84     456
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1       17     456
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      169     456
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   1      106     456
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0       66     456
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1       14     456
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       62     811
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       18     811
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      249     811
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      329     811
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0       92     811
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1       61     811
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0      829    1572
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      212    1572
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      147    1572
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       69    1572
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      238    1572
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       77    1572
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3213    7378
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1      916    7378
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0      879    7378
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1      499    7378
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1334    7378
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1      537    7378


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

* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ed15b0a6-826c-4efc-bb87-c056c1b2bbab/a6f737d6-52a6-4073-ba1e-bb2e833d2201/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed15b0a6-826c-4efc-bb87-c056c1b2bbab/a6f737d6-52a6-4073-ba1e-bb2e833d2201/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed15b0a6-826c-4efc-bb87-c056c1b2bbab/a6f737d6-52a6-4073-ba1e-bb2e833d2201/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed15b0a6-826c-4efc-bb87-c056c1b2bbab/a6f737d6-52a6-4073-ba1e-bb2e833d2201/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2502536   0.0600179   0.4404894
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4519554   0.3928135   0.5110973
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3416436   0.2983870   0.3849002
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4431024   0.4079260   0.4782788
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.5012051   0.4931216   0.5092885
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.4400744   0.4154141   0.4647347
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.5129193   0.4202459   0.6055927
0-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.7123099   0.6727542   0.7518656
0-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.5152325   0.4482140   0.5822510
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4290887   0.2765877   0.5815897
0-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.6866032   0.6130708   0.7601357
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.4713727   0.3282643   0.6144811
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.2587413   0.1867992   0.3306833
0-24 months   MAL-ED           BRAZIL                         <52 kg               NA                0.2857143   0.1487806   0.4226479
0-24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.4706870   0.3146753   0.6266987
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.6685966   0.5932130   0.7439801
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.5493421   0.4050707   0.6936135
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.2565011   0.1556207   0.3573816
0-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.5048333   0.3937368   0.6159298
0-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2659019   0.1704531   0.3613507
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.5734053   0.4777995   0.6690112
0-24 months   MAL-ED           PERU                           <52 kg               NA                0.6451227   0.5568072   0.7334381
0-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.7260480   0.6115775   0.8405184
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.5567010   0.4866665   0.6267356
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.6521739   0.5142823   0.7900655
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8813559   0.7986816   0.9640303
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4993496   0.3889782   0.6097209
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7049515   0.6628675   0.7470354
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6268187   0.5222119   0.7314254
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3645605   0.2940485   0.4350725
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.5379343   0.4888523   0.5870163
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.4611901   0.3777603   0.5446198
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.1208685   0.1040559   0.1376812
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.1849475   0.1564308   0.2134641
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.1397866   0.1184698   0.1611033
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.2428744   0.1641842   0.3215646
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.5345350   0.4872551   0.5818149
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.3636588   0.2722482   0.4550695
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.4519247   0.3688712   0.5349782
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.7358500   0.6918770   0.7798230
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.5870668   0.5077075   0.6664261
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3034832   0.2799261   0.3270403
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4755281   0.4251400   0.5259163
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3850486   0.3400065   0.4300907
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3869837   0.3743795   0.3995879
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5836745   0.5637179   0.6036311
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4964718   0.4780946   0.5148489
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.3605652   0.3275265   0.3936040
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.4185801   0.4108673   0.4262929
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.3588701   0.3352901   0.3824502
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1204950   0.4249596
0-6 months    LCNI-5           MALAWI                         <52 kg               NA                0.4311377   0.3558881   0.5063873
0-6 months    LCNI-5           MALAWI                         [52-58) kg           NA                0.2253521   0.1279867   0.3227175
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.2121901   0.0997075   0.3246727
0-6 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.4248504   0.3480476   0.5016532
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2286149   0.1043282   0.3529016
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                0.2167832   0.1490941   0.2844723
0-6 months    MAL-ED           BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.2373911   0.1041152   0.3706671
0-6 months    MAL-ED           INDIA                          <52 kg               NA                0.3694443   0.2917364   0.4471521
0-6 months    MAL-ED           INDIA                          [52-58) kg           NA                0.3695963   0.2329516   0.5062409
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    MAL-ED           NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    MAL-ED           NEPAL                          [52-58) kg           NA                0.0853659   0.0247591   0.1459726
0-6 months    MAL-ED           PERU                           >=58 kg              NA                0.3582302   0.2670285   0.4494319
0-6 months    MAL-ED           PERU                           <52 kg               NA                0.4764832   0.3823329   0.5706336
0-6 months    MAL-ED           PERU                           [52-58) kg           NA                0.4935286   0.3568984   0.6301589
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3450405   0.2779367   0.4121443
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.5698516   0.3859805   0.7537227
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4367300   0.2895788   0.5838812
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3034339   0.2113122   0.3955556
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5217005   0.4219793   0.6214217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4437346   0.3160561   0.5714131
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2468897   0.1488375   0.3449418
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3889656   0.3440686   0.4338626
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2498496   0.1607676   0.3389316
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2203317   0.1588642   0.2817992
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3392179   0.2930071   0.3854288
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.3047251   0.2272015   0.3822488
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0614003   0.0507661   0.0720346
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0967869   0.0762159   0.1173579
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0705895   0.0536148   0.0875641
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.1015289   0.0463322   0.1567255
0-6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.2885748   0.2458626   0.3312871
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2569331   0.1753262   0.3385399
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2328352   0.1748618   0.2908086
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.4619500   0.4240349   0.4998651
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.3214518   0.2898930   0.3530106
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1602395   0.1414376   0.1790414
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2893949   0.2436808   0.3351090
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2219286   0.1833406   0.2605165
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2306360   0.2197219   0.2415501
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3764713   0.3566706   0.3962719
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3137644   0.2965955   0.3309334
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2497397   0.0624284   0.4370510
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4512421   0.3921646   0.5103195
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3426750   0.2988377   0.3865124
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1961926   0.1544852   0.2379001
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.2198243   0.2098390   0.2298097
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1838362   0.1539574   0.2137150
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4826576   0.3868585   0.5784567
6-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.6801260   0.6354877   0.7247642
6-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.4979243   0.4274274   0.5684213
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.3012171   0.1456828   0.4567514
6-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.4908258   0.3861889   0.5954627
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.3498854   0.1629420   0.5368289
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.3347120   0.1560620   0.5133620
6-24 months   MAL-ED           INDIA                          <52 kg               NA                0.4921142   0.3887385   0.5954900
6-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.3074639   0.1397056   0.4752223
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1212121   0.0422692   0.2001551
6-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.3333333   0.2072763   0.4593904
6-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2027027   0.1108706   0.2945348
6-24 months   MAL-ED           PERU                           >=58 kg              NA                0.3732328   0.2509993   0.4954663
6-24 months   MAL-ED           PERU                           <52 kg               NA                0.3597254   0.2285531   0.4908977
6-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.5168106   0.3296848   0.7039365
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3445378   0.2588789   0.4301967
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665903   0.8103327
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4347826   0.2315312   0.6380340
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587482   0.8636398
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038207   0.9325430
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7878788   0.6479116   0.9278459
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3573476   0.2133194   0.5013759
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.6287818   0.5655669   0.6919967
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5326558   0.4066518   0.6586599
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1647137   0.1038403   0.2255871
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3303472   0.2709763   0.3897182
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2431335   0.1569024   0.3293646
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0634500   0.0502363   0.0766638
6-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0996370   0.0804440   0.1188300
6-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0753940   0.0602084   0.0905796
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1814509   0.0998726   0.2630292
6-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.3921157   0.3336233   0.4506080
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1725739   0.0800033   0.2651446
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2101520   0.1138746   0.3064293
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.5687191   0.5213040   0.6161342
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.4087702   0.3078915   0.5096488
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2035639   0.1791043   0.2280235
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3260539   0.2632170   0.3888909
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2466780   0.1971771   0.2961790
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2216757   0.2088623   0.2344890
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3652378   0.3393447   0.3911308
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2902962   0.2690556   0.3115368


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4953670   0.4875503   0.5031837
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6360382   0.6034429   0.6686335
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6141732   0.5541901   0.6741564
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2579186   0.2001084   0.3157287
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3487395   0.2880656   0.4094134
0-24 months   MAL-ED           PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.6000000   0.5414566   0.6585434
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8632812   0.8211147   0.9054478
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1289573   0.1128390   0.1450756
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4529148   0.4151667   0.4906629
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6910891   0.6503148   0.7318634
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3465136   0.3272783   0.3657490
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4563549   0.4471315   0.4655783
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4129746   0.4055418   0.4204074
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3503937   0.2916054   0.4091820
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2081448   0.1544982   0.2617914
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3471074   0.2870050   0.4072099
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.1764706   0.1279362   0.2250050
0-6 months    MAL-ED           PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3851852   0.3270313   0.4433391
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4218750   0.3612599   0.4824901
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0659309   0.0552270   0.0766347
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4226190   0.3935114   0.4517267
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943027   0.1783091   0.2102964
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2824844   0.2741425   0.2908263
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2162884   0.2069101   0.2256667
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5989011   0.5632737   0.6345285
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months   MAL-ED           PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0675171   0.0551317   0.0799025
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5030826   0.4587775   0.5473878
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2277354   0.2069978   0.2484730
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2645703   0.2545045   0.2746362


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8059894   0.8317719   3.921265
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3651894   0.6299828   2.958401
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1311270   1.0440441   1.225474
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9931665   0.9031130   1.092200
0-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.3887367   1.1495205   1.677734
0-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0045099   0.8038763   1.255218
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.6001428   1.1023706   2.322682
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.0985437   0.6887784   1.752085
0-24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           1.1042471   0.6344996   1.921769
0-24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           0.8588589   0.4383144   1.682898
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.4204696   0.9997251   2.018289
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.1671071   0.7629608   1.785333
0-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           1.9681523   1.2537241   3.089694
0-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.0366500   0.6087271   1.765394
0-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           1.1250727   0.9066465   1.396121
0-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.2662037   1.0063216   1.593200
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.4370370   1.1544123   1.788854
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1714976   0.9159929   1.498272
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0663319   0.9357728   1.215107
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4117394   1.1227265   1.775150
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2552703   0.9517755   1.655541
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.4755693   1.1921210   1.826413
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.2650577   0.9710473   1.648087
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.5301537   1.3183664   1.775963
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1565173   1.0268750   1.302527
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.2008699   1.5731734   3.079017
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.4973122   0.9935987   2.256388
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.6282580   1.3995398   1.894354
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2990369   1.0079200   1.674237
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5669008   1.3740776   1.786783
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2687640   1.1024759   1.460134
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5082664   1.4387909   1.581097
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2829270   1.2212893   1.347676
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1608998   1.0581361   1.273644
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9952988   0.8930151   1.109298
0-6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           1.5808383   0.8808382   2.837127
0-6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.8262911   0.4079244   1.673734
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.0022162   1.1449565   3.501329
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.0774063   0.5028472   2.308463
0-6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           0.7688172   0.3645275   1.621496
0-6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           1.0250896   0.5154428   2.038652
0-6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           1.5562683   0.8528594   2.839825
0-6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.5569087   0.7964986   3.043275
0-6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           0.4878049   0.2074125   1.147248
0-6 months    MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           <52 kg               >=58 kg           1.3301035   0.9638539   1.835522
0-6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           1.3776857   0.9452931   2.007862
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.6515500   1.1316041   2.410399
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2657356   0.8569860   1.869443
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7193220   1.2027953   2.457665
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4623766   0.9613899   2.224431
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5754635   1.0418215   2.382448
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0119890   0.5936459   1.725139
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.5395788   1.1287502   2.099936
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3830293   0.9477012   2.018326
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.5763260   1.3055225   1.903302
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1496593   0.9477543   1.394577
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.8422935   1.6189215   4.990132
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           2.5306406   1.3495177   4.745504
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.9840214   1.4699877   2.677805
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.3805980   1.0366475   1.838668
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8060145   1.4830224   2.199352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3849803   1.1227039   1.708527
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6323180   1.5209064   1.751891
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3604313   1.2655939   1.462375
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8068495   0.8407873   3.882915
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3721288   0.6380707   2.950672
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1204516   0.9021583   1.391565
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9370188   0.7180892   1.222695
6-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4091273   1.1433627   1.736667
6-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0316307   0.8083454   1.316593
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.6294753   0.9327515   2.846621
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.1615723   0.5529118   2.440263
6-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.4702616   0.8247992   2.620843
6-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           0.9185925   0.4291942   1.966038
6-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.7500000   1.2949713   5.839898
6-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.6722973   0.7564231   3.697108
6-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           0.9638099   0.5891774   1.576655
6-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.3846872   0.8493047   2.257563
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.5628518   0.8902225   2.743702
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2619300   0.7431657   2.142816
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852895   1.305039
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0350564   0.8282680   1.293473
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7595803   1.1616258   2.665336
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.4905818   0.9331941   2.380892
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.0055844   1.3314262   3.021098
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.4760974   0.8853979   2.460886
6-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.5703222   1.2683031   1.944261
6-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1882421   0.9966236   1.416703
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.1610016   1.3458662   3.469831
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           0.9510778   0.4717144   1.917577
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.7062280   1.7966862   4.076210
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.9451171   1.1764403   3.216041
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6017275   1.2763870   2.009995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2117965   0.9591743   1.530953
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6476221   1.5037355   1.805277
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3095536   1.1930620   1.437420


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1064006   -0.0453176   0.2581188
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0522646    0.0176298   0.0868993
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1231189    0.0373857   0.2088521
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1850845    0.0459412   0.3242278
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0008227   -0.0434813   0.0418359
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.1450155    0.0031681   0.2868629
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0922384    0.0075537   0.1769230
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0679740   -0.0091450   0.1450929
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0432990    0.0074698   0.0791281
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0367506   -0.0189308   0.0924320
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1651973    0.0627581   0.2676366
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.1149097    0.0523321   0.1774873
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0080888    0.0047145   0.0114630
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2100404    0.1358963   0.2841845
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.2391644    0.1693339   0.3089950
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0430304    0.0277010   0.0583598
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0693712    0.0603569   0.0783856
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0524093    0.0198554   0.0849633
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1382036    0.0322202   0.2441870
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0086384   -0.0477583   0.0304815
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                 0.1097163   -0.0145545   0.2339871
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0014706   -0.0666265   0.0695677
0-6 months    MAL-ED           PERU                           >=58 kg              NA                 0.0831491    0.0072759   0.1590224
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0401447    0.0021310   0.0781584
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1184411    0.0427909   0.1940913
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1028719    0.0101051   0.1956386
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0829796    0.0270573   0.1389019
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0045306    0.0018124   0.0072487
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.1466027    0.0915852   0.2016202
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.1897839    0.1155370   0.2640307
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0340632    0.0209899   0.0471365
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0518484    0.0436627   0.0600341
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1069145   -0.0420261   0.2558552
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0200958   -0.0212639   0.0614554
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1162435    0.0278048   0.2046823
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1228335   -0.0184029   0.2640700
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0873659   -0.0756952   0.2504271
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0901281    0.0172641   0.1629921
6-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0186591   -0.0755971   0.1129154
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0296557   -0.0140735   0.0733850
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0235282   -0.0490455   0.0961019
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2165654    0.0820127   0.3511181
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0981321    0.0434031   0.1528612
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0040671    0.0013752   0.0067589
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.1189877    0.0420614   0.1959140
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.2929306    0.2195259   0.3663354
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0241715    0.0087905   0.0395524
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0428947    0.0336411   0.0521482


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.2983298   -0.3436084   0.6335680
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.1055068    0.0328403   0.1727136
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1935715    0.0460607   0.3182723
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.3013556    0.0303963   0.4965943
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0031898   -0.1830006   0.1492905
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.2355285   -0.0357634   0.4357624
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.2644907   -0.0250780   0.4722608
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.1059809   -0.0232815   0.2189147
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0097011   0.1306889
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0425709   -0.0245477   0.1052924
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2485864    0.0760045   0.3889339
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2396597    0.0968525   0.3598860
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0627243    0.0342023   0.0904040
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.4637525    0.2729615   0.6044758
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.3460689    0.2329430   0.4425109
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1241809    0.0788562   0.1672755
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1520115    0.1319236   0.1716346
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.1269069    0.0444959   0.2022102
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                 0.3944238    0.0080065   0.6303177
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0415020   -0.2473085   0.1303464
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                 0.3160875   -0.1534405   0.5944860
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0083333   -0.4633876   0.3279957
0-6 months    MAL-ED           PERU                           >=58 kg              NA                 0.1883847   -0.0027319   0.3430752
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.1042219   -0.0002223   0.1977599
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2807493    0.0764166   0.4398757
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2941200   -0.0279867   0.5152987
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2735790    0.0650625   0.4355907
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0687167    0.0267641   0.1088609
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.5908264    0.3122782   0.7565542
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4490660    0.2689735   0.5847917
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1753100    0.1062747   0.2390127
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1835442    0.1542402   0.2118328
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.2997708   -0.3277468   0.6307120
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0929118   -0.1196367   0.2651108
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1940947    0.0313000   0.3295309
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.2896671   -0.1352566   0.5555430
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.2069900   -0.2919332   0.5132373
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.4264597   -0.0212821   0.6779064
6-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0476130   -0.2261037   0.2602248
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0792524   -0.0454791   0.1891027
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0299828   -0.0672917   0.1183916
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3773489    0.0893247   0.5742781
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.3733448    0.1302401   0.5484999
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0602376    0.0156685   0.1027887
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.3960467    0.0815585   0.6028493
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.5822715    0.3749845   0.7208115
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1061383    0.0363545   0.1708686
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1621295    0.1266328   0.1961834
