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

agecat        studyid          country                        mwtkg         ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -----------  -------------  -------  ------  -----------------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216  ever_stunted     
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      405   27196  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1      264   27196  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0    12291   27196  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1    12462   27196  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0     1028   27196  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1      746   27196  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=58 kg                  0       55     838  ever_stunted     
0-24 months   LCNI-5           MALAWI                         >=58 kg                  1       59     838  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <52 kg                   0      145     838  ever_stunted     
0-24 months   LCNI-5           MALAWI                         <52 kg                   1      359     838  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [52-58) kg               0      105     838  ever_stunted     
0-24 months   LCNI-5           MALAWI                         [52-58) kg               1      115     838  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       28     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1       20     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   0       49     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   1      113     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       21     254  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1       23     254  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      106     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  1       37     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <52 kg                   0       30     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         <52 kg                   1       12     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       28     221  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        8     221  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=58 kg                  0       22     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          >=58 kg                  1       20     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          <52 kg                   0       50     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          <52 kg                   1      100     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          [52-58) kg               0       21     242  ever_stunted     
0-24 months   MAL-ED           INDIA                          [52-58) kg               1       29     242  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=58 kg                  0       58     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          >=58 kg                  1       22     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <52 kg                   0       37     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          <52 kg                   1       39     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [52-58) kg               0       60     238  ever_stunted     
0-24 months   MAL-ED           NEPAL                          [52-58) kg               1       22     238  ever_stunted     
0-24 months   MAL-ED           PERU                           >=58 kg                  0       42     290  ever_stunted     
0-24 months   MAL-ED           PERU                           >=58 kg                  1       62     290  ever_stunted     
0-24 months   MAL-ED           PERU                           <52 kg                   0       42     290  ever_stunted     
0-24 months   MAL-ED           PERU                           <52 kg                   1       73     290  ever_stunted     
0-24 months   MAL-ED           PERU                           [52-58) kg               0       20     290  ever_stunted     
0-24 months   MAL-ED           PERU                           [52-58) kg               1       51     290  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0       86     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1      108     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0        6     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1       24     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       16     270  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1       30     270  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       17     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       81     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       11     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       88     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     256  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       52     256  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       43     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1       39     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0      134     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1      319     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       34     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1       60     629  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      125     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1       67     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      184     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1      222     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0       84     755  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1       73     755  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=58 kg                  0     9047   13772  ever_stunted     
0-24 months   PROBIT           BELARUS                        >=58 kg                  1     1232   13772  ever_stunted     
0-24 months   PROBIT           BELARUS                        <52 kg                   0      914   13772  ever_stunted     
0-24 months   PROBIT           BELARUS                        <52 kg                   1      217   13772  ever_stunted     
0-24 months   PROBIT           BELARUS                        [52-58) kg               0     2035   13772  ever_stunted     
0-24 months   PROBIT           BELARUS                        [52-58) kg               1      327   13772  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0       90     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1       30     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      203     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   1      229     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0       73     669  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1       44     669  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       68    1515  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       45    1515  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      295    1515  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      865    1515  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      105    1515  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1      137    1515  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1028    2352  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      448    2352  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      211    2352  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      182    2352  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      298    2352  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      185    2352  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3584   11204  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1     2259   11204  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0     1009   11204  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1     1399   11204  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1498   11204  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1     1455   11204  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  0      456   27130  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  1      212   27130  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   0    14307   27130  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   1    10385   27130  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               0     1163   27130  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               1      607   27130  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=58 kg                  0       24     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         >=58 kg                  1        9     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <52 kg                   0       95     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         <52 kg                   1       72     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [52-58) kg               0       55     271  ever_stunted     
0-6 months    LCNI-5           MALAWI                         [52-58) kg               1       16     271  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  0       38     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  1       10     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   0       94     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   1       68     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               0       33     254  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               1       11     254  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  0      112     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  1       31     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <52 kg                   0       35     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         <52 kg                   1        7     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               0       28     221  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               1        8     221  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=58 kg                  0       32     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          >=58 kg                  1       10     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          <52 kg                   0       95     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          <52 kg                   1       55     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          [52-58) kg               0       31     242  ever_stunted     
0-6 months    MAL-ED           INDIA                          [52-58) kg               1       19     242  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=58 kg                  0       66     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          >=58 kg                  1       14     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <52 kg                   0       55     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          <52 kg                   1       21     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [52-58) kg               0       75     238  ever_stunted     
0-6 months    MAL-ED           NEPAL                          [52-58) kg               1        7     238  ever_stunted     
0-6 months    MAL-ED           PERU                           >=58 kg                  0       65     290  ever_stunted     
0-6 months    MAL-ED           PERU                           >=58 kg                  1       39     290  ever_stunted     
0-6 months    MAL-ED           PERU                           <52 kg                   0       61     290  ever_stunted     
0-6 months    MAL-ED           PERU                           <52 kg                   1       54     290  ever_stunted     
0-6 months    MAL-ED           PERU                           [52-58) kg               0       36     290  ever_stunted     
0-6 months    MAL-ED           PERU                           [52-58) kg               1       35     290  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  0      127     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  1       67     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   0       13     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   1       17     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               0       26     270  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               1       20     270  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       68     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       30     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       47     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       52     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       33     256  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     256  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  0       61     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  1       21     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   0      278     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   1      175     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               0       70     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               1       24     629  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  0      153     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  1       39     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   0      262     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   1      144     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               0      111     755  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               1       46     755  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=58 kg                  0     9655   13772  ever_stunted     
0-6 months    PROBIT           BELARUS                        >=58 kg                  1      624   13772  ever_stunted     
0-6 months    PROBIT           BELARUS                        <52 kg                   0     1014   13772  ever_stunted     
0-6 months    PROBIT           BELARUS                        <52 kg                   1      117   13772  ever_stunted     
0-6 months    PROBIT           BELARUS                        [52-58) kg               0     2195   13772  ever_stunted     
0-6 months    PROBIT           BELARUS                        [52-58) kg               1      167   13772  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  0      107     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  1       13     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   0      309     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   1      123     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               0       87     669  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               1       30     669  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  0       86    1512  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  1       27    1512  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   0      622    1512  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   1      536    1512  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               0      165    1512  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               1       76    1512  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1240    2352  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      236    2352  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      280    2352  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1      113    2352  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      375    2352  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1      108    2352  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4494   11190  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  1     1343   11190  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   0     1505   11190  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   1      900   11190  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2030   11190  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               1      918   11190  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      705    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1      232    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      658    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1      543    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      706    3216  ever_stunted     
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1      372    3216  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      242   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1       52   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0     7318   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1     2077   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0      658   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1      139   10486  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=58 kg                  0       55     728  ever_stunted     
6-24 months   LCNI-5           MALAWI                         >=58 kg                  1       50     728  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <52 kg                   0      138     728  ever_stunted     
6-24 months   LCNI-5           MALAWI                         <52 kg                   1      287     728  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [52-58) kg               0       99     728  ever_stunted     
6-24 months   LCNI-5           MALAWI                         [52-58) kg               1       99     728  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       25     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1       10     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   0       45     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   1       45     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       21     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1       12     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      101     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  1        6     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <52 kg                   0       25     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         <52 kg                   1        5     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       26     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        0     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=58 kg                  0       21     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          >=58 kg                  1       10     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <52 kg                   0       47     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          <52 kg                   1       45     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          [52-58) kg               0       21     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          [52-58) kg               1       10     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=58 kg                  0       58     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          >=58 kg                  1        8     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <52 kg                   0       36     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          <52 kg                   1       18     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [52-58) kg               0       59     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          [52-58) kg               1       15     194  ever_stunted     
6-24 months   MAL-ED           PERU                           >=58 kg                  0       39     148  ever_stunted     
6-24 months   MAL-ED           PERU                           >=58 kg                  1       23     148  ever_stunted     
6-24 months   MAL-ED           PERU                           <52 kg                   0       35     148  ever_stunted     
6-24 months   MAL-ED           PERU                           <52 kg                   1       19     148  ever_stunted     
6-24 months   MAL-ED           PERU                           [52-58) kg               0       16     148  ever_stunted     
6-24 months   MAL-ED           PERU                           [52-58) kg               1       16     148  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0       78     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1       41     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0        6     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1        7     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       13     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1       10     155  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       16     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       51     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0        8     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       36     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0        7     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       26     144  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       34     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1       18     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0       85     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1      144     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       28     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1       36     345  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      121     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1       28     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      173     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1       78     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0       79     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1       27     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=58 kg                  0     9040   12856  ever_stunted     
6-24 months   PROBIT           BELARUS                        >=58 kg                  1      608   12856  ever_stunted     
6-24 months   PROBIT           BELARUS                        <52 kg                   0      914   12856  ever_stunted     
6-24 months   PROBIT           BELARUS                        <52 kg                   1      100   12856  ever_stunted     
6-24 months   PROBIT           BELARUS                        [52-58) kg               0     2034   12856  ever_stunted     
6-24 months   PROBIT           BELARUS                        [52-58) kg               1      160   12856  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0       84     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1       17     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      169     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   1      106     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0       66     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1       14     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       62     811  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       18     811  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      249     811  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      329     811  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0       92     811  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1       61     811  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0      829    1572  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1      212    1572  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      147    1572  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       69    1572  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      238    1572  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       77    1572  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     3213    7378  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1      916    7378  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0      879    7378  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1      499    7378  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     1334    7378  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1      537    7378  ever_stunted     


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
