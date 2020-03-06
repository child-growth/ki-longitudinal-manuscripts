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

unadjusted

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
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       62    1514
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       47    1514
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      300    1514
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      868    1514
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      106    1514
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1      131    1514
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
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  0       85    1511
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  1       24    1511
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   0      624    1511
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   1      541    1511
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               0      163    1511
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               1       74    1511
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
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       56     810
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       23     810
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      252     810
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      327     810
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0       95     810
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1       57     810
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




# Results Detail

## Results Plots
![](/tmp/43de3385-06ed-4835-b9f8-907cf4885cc3/1aacf731-461c-46a1-8b68-f7a7aed3098c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/43de3385-06ed-4835-b9f8-907cf4885cc3/1aacf731-461c-46a1-8b68-f7a7aed3098c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/43de3385-06ed-4835-b9f8-907cf4885cc3/1aacf731-461c-46a1-8b68-f7a7aed3098c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/43de3385-06ed-4835-b9f8-907cf4885cc3/1aacf731-461c-46a1-8b68-f7a7aed3098c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2475987   0.0911220   0.4040754
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4521232   0.3943693   0.5098771
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3450835   0.3011693   0.3889977
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.5175439   0.4257619   0.6093258
0-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.7123016   0.6727565   0.7518467
0-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.5227273   0.4566858   0.5887688
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4166667   0.2769215   0.5564118
0-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.6975309   0.6266597   0.7684020
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.5227273   0.3748507   0.6706038
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                0.2587413   0.1867992   0.3306833
0-24 months   MAL-ED           BRAZIL                         <52 kg               NA                0.2857143   0.1487806   0.4226479
0-24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.4761905   0.3248345   0.6275465
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.6666667   0.5910713   0.7422621
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.5800000   0.4429115   0.7170885
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.2750000   0.1769488   0.3730512
0-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.5131579   0.4005484   0.6257674
0-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2682927   0.1721915   0.3643938
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.5961538   0.5016893   0.6906184
0-24 months   MAL-ED           PERU                           <52 kg               NA                0.6347826   0.5466295   0.7229357
0-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.7183099   0.6134979   0.8231218
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.5567010   0.4866665   0.6267356
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.8000000   0.6565987   0.9434013
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.6521739   0.5142823   0.7900655
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8265306   0.7514158   0.9016455
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8888889   0.8268616   0.9509162
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8813559   0.7986816   0.9640303
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4756098   0.3674317   0.5837879
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.7041943   0.6621319   0.7462567
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.6382979   0.5410865   0.7355092
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3489583   0.2814937   0.4164230
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.5467980   0.4983437   0.5952523
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.4649682   0.3868976   0.5430387
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.1198560   0.1031926   0.1365195
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.1918656   0.1618689   0.2218623
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.1384420   0.1163732   0.1605108
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.2500000   0.1724677   0.3275323
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.5300926   0.4829934   0.5771917
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.3760684   0.2882305   0.4639063
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.4311927   0.3357012   0.5266841
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.7431507   0.7007461   0.7855552
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.5527426   0.4772008   0.6282844
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3035230   0.2800620   0.3269840
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4631043   0.4137951   0.5124136
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.3830228   0.3396603   0.4263852
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.3866165   0.3741295   0.3991034
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.5809801   0.5612723   0.6006878
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.4927193   0.4746866   0.5107519
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1204950   0.4249596
0-6 months    LCNI-5           MALAWI                         <52 kg               NA                0.4311377   0.3558881   0.5063873
0-6 months    LCNI-5           MALAWI                         [52-58) kg           NA                0.2253521   0.1279867   0.3227175
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.2083333   0.0932176   0.3234491
0-6 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.4197531   0.3436065   0.4958997
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                0.2167832   0.1490941   0.2844723
0-6 months    MAL-ED           BRAZIL                         <52 kg               NA                0.1666667   0.0537022   0.2796312
0-6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                0.2222222   0.0861081   0.3583363
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.2380952   0.1090184   0.3671721
0-6 months    MAL-ED           INDIA                          <52 kg               NA                0.3666667   0.2893891   0.4439442
0-6 months    MAL-ED           INDIA                          [52-58) kg           NA                0.3800000   0.2451814   0.5148186
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-6 months    MAL-ED           NEPAL                          <52 kg               NA                0.2763158   0.1755686   0.3770630
0-6 months    MAL-ED           NEPAL                          [52-58) kg           NA                0.0853659   0.0247591   0.1459726
0-6 months    MAL-ED           PERU                           >=58 kg              NA                0.3750000   0.2817954   0.4682046
0-6 months    MAL-ED           PERU                           <52 kg               NA                0.4695652   0.3781932   0.5609372
0-6 months    MAL-ED           PERU                           [52-58) kg           NA                0.4929577   0.3764658   0.6094497
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3453608   0.2783275   0.4123941
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.5666667   0.3890155   0.7443178
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4347826   0.2912605   0.5783047
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.3061224   0.2146956   0.3975493
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.5252525   0.4266936   0.6238114
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4406780   0.3137482   0.5676078
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2560976   0.1615506   0.3506445
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3863135   0.3414402   0.4311867
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2553191   0.1671013   0.3435370
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2031250   0.1461792   0.2600708
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3546798   0.3081128   0.4012469
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2929936   0.2217532   0.3642341
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0607063   0.0502479   0.0711647
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.1034483   0.0823742   0.1245223
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0707028   0.0539405   0.0874651
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.1083333   0.0526834   0.1639833
0-6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.2847222   0.2421350   0.3273094
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2564103   0.1772305   0.3355901
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2201835   0.1722696   0.2680974
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.4643777   0.4221176   0.5066377
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.3122363   0.2443228   0.3801498
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1598916   0.1411900   0.1785932
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2875318   0.2427739   0.3322897
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2236025   0.1864364   0.2607686
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2300839   0.2192861   0.2408818
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3742204   0.3548791   0.3935616
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3113976   0.2946810   0.3281141
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2475987   0.0911220   0.4040754
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.4521232   0.3943693   0.5098771
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.3450835   0.3011693   0.3889977
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4761905   0.3805968   0.5717841
6-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.6752941   0.6307445   0.7198437
6-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.5000000   0.4303078   0.5696922
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.2857143   0.1355749   0.4358537
6-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.5000000   0.3963724   0.6036276
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.3636364   0.1989885   0.5282843
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.3225806   0.1574872   0.4876741
6-24 months   MAL-ED           INDIA                          <52 kg               NA                0.4891304   0.3866511   0.5916097
6-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.3225806   0.1574872   0.4876741
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1212121   0.0422692   0.2001551
6-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.3333333   0.2072763   0.4593904
6-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2027027   0.1108706   0.2945348
6-24 months   MAL-ED           PERU                           >=58 kg              NA                0.3709677   0.2503173   0.4916182
6-24 months   MAL-ED           PERU                           <52 kg               NA                0.3518519   0.2240490   0.4796547
6-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.5000000   0.3261738   0.6738262
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3445378   0.2588789   0.4301967
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.5384615   0.2665903   0.8103327
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4347826   0.2315312   0.6380340
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.7611940   0.6587482   0.8636398
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.8181818   0.7038207   0.9325430
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7878788   0.6479116   0.9278459
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3461538   0.2166600   0.4756477
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.6288210   0.5661573   0.6914846
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5625000   0.4407865   0.6842135
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1879195   0.1251324   0.2507065
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3107570   0.2534460   0.3680679
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2547170   0.1716909   0.3377430
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0630182   0.0498686   0.0761679
6-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0986193   0.0789628   0.1182759
6-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0729262   0.0572566   0.0885957
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1683168   0.0952691   0.2413646
6-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.3854545   0.3278679   0.4430412
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1750000   0.0916461   0.2583539
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2911392   0.1936378   0.3886407
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.5647668   0.5186545   0.6108792
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.3750000   0.2731289   0.4768711
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2036503   0.1791791   0.2281215
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.3194444   0.2572447   0.3816442
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2444444   0.1969706   0.2919183
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2218455   0.2091715   0.2345195
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3621190   0.3367415   0.3874965
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2870123   0.2665133   0.3075113


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
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
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6908851   0.6500577   0.7317124
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3465136   0.3272783   0.3657490
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4563549   0.4471315   0.4655783
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
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4228987   0.3938571   0.4519404
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1943027   0.1783091   0.2102964
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2824844   0.2741425   0.2908263
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3566542   0.3069876   0.4063208
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
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5024691   0.4579693   0.5469690
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2277354   0.2069978   0.2484730
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2645703   0.2545045   0.2746362


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8260322   0.9598910   3.473721
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3937208   0.7364399   2.637632
0-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.3763115   1.1429113   1.657376
0-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0100154   0.8123881   1.255719
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.6740741   1.1791805   2.376671
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.2545455   0.8089716   1.945537
0-24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           1.1042471   0.6344996   1.921769
0-24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           0.8588589   0.4383144   1.682898
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.4000000   0.9990041   1.961954
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.2180000   0.8196426   1.809964
0-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           1.8660287   1.2277016   2.836245
0-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           0.9756098   0.5885491   1.617222
0-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           1.0647966   0.8625050   1.314534
0-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.2049069   0.9714132   1.494524
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.4370370   1.1544123   1.788854
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.1714976   0.9159929   1.498272
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0754458   0.9590191   1.206007
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0663319   0.9357728   1.215107
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4806136   1.1703384   1.873148
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3420622   1.0206873   1.764626
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.5669436   1.2667497   1.938277
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3324461   1.0314354   1.721303
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.6008008   1.3660069   1.875952
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1550692   1.0195753   1.308569
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.1203704   1.5356975   2.927641
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.5042735   1.0202671   2.217889
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.7234771   1.3876003   2.140655
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2818924   0.9109777   1.803829
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5257634   1.3376591   1.740319
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2619232   1.1002697   1.447327
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.5027298   1.4339673   1.574790
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2744394   1.2137256   1.338190
0-6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           1.5808383   0.8808382   2.837127
0-6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           0.8262911   0.4079244   1.673734
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.0148148   1.1263191   3.604199
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.2000000   0.5646690   2.550167
0-6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           0.7688172   0.3645275   1.621496
0-6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           1.0250896   0.5154428   2.038652
0-6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           1.5400000   0.8608228   2.755038
0-6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.5960000   0.8349394   3.050779
0-6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           1.5789474   0.8663523   2.877669
0-6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           0.4878049   0.2074125   1.147248
0-6 months    MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           <52 kg               >=58 kg           1.2521739   0.9132221   1.716931
0-6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           1.3145540   0.9328994   1.852346
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.6407960   1.1348019   2.372407
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2589228   0.8584048   1.846316
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7158249   1.2058435   2.441490
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.4395480   0.9506643   2.179843
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5084621   1.0243569   2.221353
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9969605   0.6012813   1.653021
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.7461160   1.2812347   2.379674
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.4424302   0.9952398   2.090556
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.7040782   1.4202393   2.044643
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1646699   0.9649870   1.405673
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.6282051   1.5392207   4.487636
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           2.3668639   1.2997888   4.309965
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.1090486   1.5912668   2.795311
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.4180731   1.0329858   1.946717
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7982921   1.4801286   2.184847
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3984630   1.1412566   1.713636
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6264515   1.5167788   1.744054
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3534084   1.2602656   1.453435
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8260322   0.9598910   3.473721
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3937208   0.7364399   2.637632
6-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.4181176   1.1480005   1.751792
6-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0500000   0.8223400   1.340686
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.7500000   0.9947470   3.078672
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.2727273   0.6360444   2.546732
6-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.5163043   0.8721987   2.636072
6-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.0000000   0.4849158   2.062213
6-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.7500000   1.2949713   5.839898
6-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.6722973   0.7564231   3.697108
6-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           0.9484702   0.5824796   1.544424
6-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.3478261   0.8373007   2.169633
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.5628518   0.8902225   2.743702
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.2619300   0.7431657   2.142816
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.0748663   0.8852895   1.305039
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0350564   0.8282680   1.293473
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.8165939   1.2334615   2.675409
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.6250000   1.0547920   2.503456
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.6536710   1.1290332   2.422097
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3554582   0.8499000   2.161745
6-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.5649330   1.2580811   1.946628
6-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1572230   0.9577664   1.398217
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.2900535   1.4471415   3.623934
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.0397059   0.5458370   1.980423
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.9398513   1.4041538   2.679922
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2880435   0.7526368   2.204325
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5685928   1.2477891   1.971874
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2003145   0.9552371   1.508269
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6323028   1.4911917   1.786767
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2937486   1.1806724   1.417655


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1090555   -0.0096082   0.2277192
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1184943    0.0336743   0.2033143
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1975066    0.0720244   0.3229887
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0008227   -0.0434813   0.0418359
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.1395120    0.0026602   0.2763638
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0737395   -0.0089173   0.1563962
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0452255   -0.0294778   0.1199288
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0432990    0.0074698   0.0791281
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0367506   -0.0189308   0.0924320
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.1889371    0.0888626   0.2890117
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.1305119    0.0712826   0.1897411
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0091013    0.0056546   0.0125480
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2029148    0.1302534   0.2755762
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.2596924    0.1621951   0.3571897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0429906    0.0278385   0.0581427
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0697384    0.0608861   0.0785907
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.0852063   -0.0590172   0.2294298
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1420604    0.0338975   0.2502232
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0086384   -0.0477583   0.0304815
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                 0.1090122   -0.0113624   0.2293868
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0014706   -0.0666265   0.0695677
0-6 months    MAL-ED           PERU                           >=58 kg              NA                 0.0663793   -0.0093421   0.1421007
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0398244    0.0021671   0.0774816
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1157526    0.0406972   0.1908079
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0936640    0.0042236   0.1831044
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.1001863    0.0485133   0.1518592
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0052246    0.0026153   0.0078338
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.1397982    0.0844920   0.1951044
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.2027153    0.1343047   0.2711258
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0344111    0.0215047   0.0473175
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0524004    0.0443665   0.0604344
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.1090555   -0.0096082   0.2277192
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1227106    0.0345548   0.2108665
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.1383363    0.0022085   0.2744642
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.0994973   -0.0501929   0.2491875
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.0901281    0.0172641   0.1629921
6-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0209241   -0.0717484   0.1135967
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0296557   -0.0140735   0.0733850
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0235282   -0.0490455   0.0961019
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2277592    0.1075739   0.3479445
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0749264    0.0192990   0.1305537
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0044989    0.0016459   0.0073519
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.1321218    0.0632255   0.2010180
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.2113299    0.1149281   0.3077317
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0240850    0.0087303   0.0394398
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0427249    0.0336605   0.0517892


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3057738   -0.1706669   0.5883116
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.1863006    0.0406527   0.3098363
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.3215812    0.0794041   0.5000498
0-24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0031898   -0.1830006   0.1492905
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.2265900   -0.0331690   0.4210404
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.2114458   -0.0644438   0.4158285
0-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0705128   -0.0539896   0.1803084
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0721649    0.0097011   0.1306889
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0425709   -0.0245477   0.1052924
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2843097    0.1148337   0.4213374
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2722002    0.1368983   0.3862918
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0705760    0.0415381   0.0987341
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.4480198    0.2623426   0.5869598
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.3758837    0.2225857   0.4989529
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1240660    0.0792695   0.1666831
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1528162    0.1330886   0.1720948
0-6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.2380506   -0.2925147   0.5508238
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                 0.4054307    0.0052622   0.6446173
0-6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0415020   -0.2473085   0.1303464
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                 0.3140590   -0.1353314   0.5855702
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.0083333   -0.4633876   0.3279957
0-6 months    MAL-ED           PERU                           >=58 kg              NA                 0.1503906   -0.0401780   0.3060456
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.1033902   -0.0000744   0.1961506
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2743764    0.0724311   0.4323553
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2677938   -0.0377840   0.4833936
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.3303084    0.1383375   0.4795098
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0792433    0.0395137   0.1173295
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.5634036    0.2874283   0.7324951
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4793470    0.3234321   0.5993314
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1771006    0.1089749   0.2400175
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1854985    0.1567523   0.2132646
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3057738   -0.1706669   0.5883116
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2048930    0.0423577   0.3398420
6-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                 0.3262260   -0.0849378   0.5815692
6-24 months   MAL-ED           INDIA                          >=58 kg              NA                 0.2357320   -0.2160558   0.5196721
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                 0.4264597   -0.0212821   0.6779064
6-24 months   MAL-ED           PERU                           >=58 kg              NA                 0.0533927   -0.2153095   0.2626854
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.0792524   -0.0454791   0.1891027
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0299828   -0.0672917   0.1183916
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3968531    0.1437372   0.5751466
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2850583    0.0414740   0.4667420
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.0666330    0.0196490   0.1113653
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.4397630    0.1629070   0.6250530
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4205828    0.1988350   0.5809549
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1057589    0.0360797   0.1704011
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1614877    0.1267460   0.1948473
