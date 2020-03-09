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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        mwtkg         ever_co   n_cell       n
------------  ---------------  -----------------------------  -----------  --------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      868    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       69    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg              0      995    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg              1      206    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      967    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      111    3216
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg             0      614   26892
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg             1       46   26892
0-24 months   JiVitA-3         BANGLADESH                     <52 kg              0    22271   26892
0-24 months   JiVitA-3         BANGLADESH                     <52 kg              1     2204   26892
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg          0     1617   26892
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg          1      140   26892
0-24 months   LCNI-5           MALAWI                         >=58 kg             0      112     838
0-24 months   LCNI-5           MALAWI                         >=58 kg             1        2     838
0-24 months   LCNI-5           MALAWI                         <52 kg              0      475     838
0-24 months   LCNI-5           MALAWI                         <52 kg              1       29     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg          0      209     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg          1       11     838
0-24 months   MAL-ED           BANGLADESH                     >=58 kg             0       45     254
0-24 months   MAL-ED           BANGLADESH                     >=58 kg             1        3     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg              0      129     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg              1       33     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg          0       41     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg          1        3     254
0-24 months   MAL-ED           BRAZIL                         >=58 kg             0      142     221
0-24 months   MAL-ED           BRAZIL                         >=58 kg             1        1     221
0-24 months   MAL-ED           BRAZIL                         <52 kg              0       42     221
0-24 months   MAL-ED           BRAZIL                         <52 kg              1        0     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg          0       35     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg          1        1     221
0-24 months   MAL-ED           INDIA                          >=58 kg             0       38     242
0-24 months   MAL-ED           INDIA                          >=58 kg             1        4     242
0-24 months   MAL-ED           INDIA                          <52 kg              0      109     242
0-24 months   MAL-ED           INDIA                          <52 kg              1       41     242
0-24 months   MAL-ED           INDIA                          [52-58) kg          0       42     242
0-24 months   MAL-ED           INDIA                          [52-58) kg          1        8     242
0-24 months   MAL-ED           NEPAL                          >=58 kg             0       76     238
0-24 months   MAL-ED           NEPAL                          >=58 kg             1        4     238
0-24 months   MAL-ED           NEPAL                          <52 kg              0       61     238
0-24 months   MAL-ED           NEPAL                          <52 kg              1       15     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg          0       79     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg          1        3     238
0-24 months   MAL-ED           PERU                           >=58 kg             0      100     290
0-24 months   MAL-ED           PERU                           >=58 kg             1        4     290
0-24 months   MAL-ED           PERU                           <52 kg              0      108     290
0-24 months   MAL-ED           PERU                           <52 kg              1        7     290
0-24 months   MAL-ED           PERU                           [52-58) kg          0       70     290
0-24 months   MAL-ED           PERU                           [52-58) kg          1        1     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             0      180     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             1       14     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg              0       28     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg              1        2     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          0       41     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          1        5     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       95     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        3     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       83     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        4     256
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg             0       71     624
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg             1       11     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg              0      336     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg              1      112     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg          0       80     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg          1       14     624
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg             0      182     755
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg             1       10     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg              0      354     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg              1       52     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          0      148     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          1        9     755
0-24 months   PROBIT           BELARUS                        >=58 kg             0    10271   13772
0-24 months   PROBIT           BELARUS                        >=58 kg             1        8   13772
0-24 months   PROBIT           BELARUS                        <52 kg              0     1131   13772
0-24 months   PROBIT           BELARUS                        <52 kg              1        0   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg          0     2356   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg          1        6   13772
0-24 months   PROVIDE          BANGLADESH                     >=58 kg             0      115     669
0-24 months   PROVIDE          BANGLADESH                     >=58 kg             1        5     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg              0      356     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg              1       76     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg          0      108     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg          1        9     669
0-24 months   SAS-CompFeed     INDIA                          >=58 kg             0      104    1498
0-24 months   SAS-CompFeed     INDIA                          >=58 kg             1        9    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg              0      839    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg              1      305    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg          0      207    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg          1       34    1498
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1408    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       68    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      370    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      458    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       25    2352
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             0     5615   11164
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             1      204   11164
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg              0     2208   11164
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg              1      190   11164
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2808   11164
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          1      139   11164
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg             0      641   26785
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg             1       17   26785
0-6 months    JiVitA-3         BANGLADESH                     <52 kg              0    23392   26785
0-6 months    JiVitA-3         BANGLADESH                     <52 kg              1      986   26785
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg          0     1690   26785
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg          1       59   26785
0-6 months    LCNI-5           MALAWI                         >=58 kg             0       33     271
0-6 months    LCNI-5           MALAWI                         >=58 kg             1        0     271
0-6 months    LCNI-5           MALAWI                         <52 kg              0      167     271
0-6 months    LCNI-5           MALAWI                         <52 kg              1        0     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg          0       71     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg          1        0     271
0-6 months    MAL-ED           BANGLADESH                     >=58 kg             0       46     254
0-6 months    MAL-ED           BANGLADESH                     >=58 kg             1        2     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg              0      155     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg              1        7     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg          0       44     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg          1        0     254
0-6 months    MAL-ED           BRAZIL                         >=58 kg             0      143     221
0-6 months    MAL-ED           BRAZIL                         >=58 kg             1        0     221
0-6 months    MAL-ED           BRAZIL                         <52 kg              0       42     221
0-6 months    MAL-ED           BRAZIL                         <52 kg              1        0     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg          0       36     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg          1        0     221
0-6 months    MAL-ED           INDIA                          >=58 kg             0       40     242
0-6 months    MAL-ED           INDIA                          >=58 kg             1        2     242
0-6 months    MAL-ED           INDIA                          <52 kg              0      137     242
0-6 months    MAL-ED           INDIA                          <52 kg              1       13     242
0-6 months    MAL-ED           INDIA                          [52-58) kg          0       47     242
0-6 months    MAL-ED           INDIA                          [52-58) kg          1        3     242
0-6 months    MAL-ED           NEPAL                          >=58 kg             0       79     238
0-6 months    MAL-ED           NEPAL                          >=58 kg             1        1     238
0-6 months    MAL-ED           NEPAL                          <52 kg              0       70     238
0-6 months    MAL-ED           NEPAL                          <52 kg              1        6     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg          0       81     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg          1        1     238
0-6 months    MAL-ED           PERU                           >=58 kg             0      103     290
0-6 months    MAL-ED           PERU                           >=58 kg             1        1     290
0-6 months    MAL-ED           PERU                           <52 kg              0      114     290
0-6 months    MAL-ED           PERU                           <52 kg              1        1     290
0-6 months    MAL-ED           PERU                           [52-58) kg          0       71     290
0-6 months    MAL-ED           PERU                           [52-58) kg          1        0     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             0      191     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             1        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg              0       30     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg              1        0     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          0       46     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          1        0     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       97     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       98     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       57     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     256
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg             0       77     622
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg             1        5     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg              0      410     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg              1       36     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg          0       90     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg          1        4     622
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg             0      189     755
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg             1        3     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg              0      393     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg              1       13     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          0      156     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          1        1     755
0-6 months    PROBIT           BELARUS                        >=58 kg             0    10274   13772
0-6 months    PROBIT           BELARUS                        >=58 kg             1        5   13772
0-6 months    PROBIT           BELARUS                        <52 kg              0     1131   13772
0-6 months    PROBIT           BELARUS                        <52 kg              1        0   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg          0     2358   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg          1        4   13772
0-6 months    PROVIDE          BANGLADESH                     >=58 kg             0      117     669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg             1        3     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg              0      409     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg              1       23     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg          0      113     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg          1        4     669
0-6 months    SAS-CompFeed     INDIA                          >=58 kg             0      109    1490
0-6 months    SAS-CompFeed     INDIA                          >=58 kg             1        4    1490
0-6 months    SAS-CompFeed     INDIA                          <52 kg              0     1050    1490
0-6 months    SAS-CompFeed     INDIA                          <52 kg              1       88    1490
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg          0      227    1490
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg          1       12    1490
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1464    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       12    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      390    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        3    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      480    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3    2352
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             0     5744   11112
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             1       54   11112
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg              0     2329   11112
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg              1       50   11112
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2902   11112
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          1       33   11112
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      868    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       69    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg              0      995    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg              1      206    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      967    3216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      111    3216
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg             0      396   17270
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg             1       31   17270
6-24 months   JiVitA-3         BANGLADESH                     <52 kg              0    14282   17270
6-24 months   JiVitA-3         BANGLADESH                     <52 kg              1     1378   17270
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg          0     1091   17270
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg          1       92   17270
6-24 months   LCNI-5           MALAWI                         >=58 kg             0      112     824
6-24 months   LCNI-5           MALAWI                         >=58 kg             1        2     824
6-24 months   LCNI-5           MALAWI                         <52 kg              0      467     824
6-24 months   LCNI-5           MALAWI                         <52 kg              1       29     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg          0      203     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg          1       11     824
6-24 months   MAL-ED           BANGLADESH                     >=58 kg             0       42     239
6-24 months   MAL-ED           BANGLADESH                     >=58 kg             1        2     239
6-24 months   MAL-ED           BANGLADESH                     <52 kg              0      124     239
6-24 months   MAL-ED           BANGLADESH                     <52 kg              1       30     239
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg          0       38     239
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg          1        3     239
6-24 months   MAL-ED           BRAZIL                         >=58 kg             0      134     206
6-24 months   MAL-ED           BRAZIL                         >=58 kg             1        1     206
6-24 months   MAL-ED           BRAZIL                         <52 kg              0       37     206
6-24 months   MAL-ED           BRAZIL                         <52 kg              1        0     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg          0       33     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg          1        1     206
6-24 months   MAL-ED           INDIA                          >=58 kg             0       37     234
6-24 months   MAL-ED           INDIA                          >=58 kg             1        3     234
6-24 months   MAL-ED           INDIA                          <52 kg              0      108     234
6-24 months   MAL-ED           INDIA                          <52 kg              1       37     234
6-24 months   MAL-ED           INDIA                          [52-58) kg          0       42     234
6-24 months   MAL-ED           INDIA                          [52-58) kg          1        7     234
6-24 months   MAL-ED           NEPAL                          >=58 kg             0       76     235
6-24 months   MAL-ED           NEPAL                          >=58 kg             1        3     235
6-24 months   MAL-ED           NEPAL                          <52 kg              0       64     235
6-24 months   MAL-ED           NEPAL                          <52 kg              1       11     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg          0       79     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg          1        2     235
6-24 months   MAL-ED           PERU                           >=58 kg             0       97     269
6-24 months   MAL-ED           PERU                           >=58 kg             1        3     269
6-24 months   MAL-ED           PERU                           <52 kg              0       98     269
6-24 months   MAL-ED           PERU                           <52 kg              1        7     269
6-24 months   MAL-ED           PERU                           [52-58) kg          0       63     269
6-24 months   MAL-ED           PERU                           [52-58) kg          1        1     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             0      169     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             1       13     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg              0       28     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg              1        2     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          0       37     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          1        5     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       93     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       76     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3     245
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg             0       64     542
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg             1        8     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg              0      293     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg              1       95     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg          0       71     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg          1       11     542
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg             0      181     730
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg             1        7     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg              0      343     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg              1       48     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          0      143     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          1        8     730
6-24 months   PROBIT           BELARUS                        >=58 kg             0    10268   13764
6-24 months   PROBIT           BELARUS                        >=58 kg             1        4   13764
6-24 months   PROBIT           BELARUS                        <52 kg              0     1131   13764
6-24 months   PROBIT           BELARUS                        <52 kg              1        0   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg          0     2359   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg          1        2   13764
6-24 months   PROVIDE          BANGLADESH                     >=58 kg             0      109     613
6-24 months   PROVIDE          BANGLADESH                     >=58 kg             1        4     613
6-24 months   PROVIDE          BANGLADESH                     <52 kg              0      326     613
6-24 months   PROVIDE          BANGLADESH                     <52 kg              1       66     613
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg          0      103     613
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg          1        5     613
6-24 months   SAS-CompFeed     INDIA                          >=58 kg             0       99    1382
6-24 months   SAS-CompFeed     INDIA                          >=58 kg             1        7    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg              0      778    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg              1      275    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg          0      193    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg          1       30    1382
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1191    1977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       64    1977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      287    1977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    1977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      389    1977
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       23    1977
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             0     4864    9742
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             1      156    9742
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg              0     1977    9742
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg              1      149    9742
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2485    9742
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          1      111    9742


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
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
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/4ad17a79-5c51-410f-8b6a-7f496b956201/5a116145-ff30-4eca-a6cf-61f1ff6d1ed9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ad17a79-5c51-410f-8b6a-7f496b956201/5a116145-ff30-4eca-a6cf-61f1ff6d1ed9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ad17a79-5c51-410f-8b6a-7f496b956201/5a116145-ff30-4eca-a6cf-61f1ff6d1ed9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ad17a79-5c51-410f-8b6a-7f496b956201/5a116145-ff30-4eca-a6cf-61f1ff6d1ed9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0738144   0.0483847   0.0992440
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1729625   0.1411000   0.2048250
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1016560   0.0754321   0.1278800
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0791344   0.0604017   0.0978672
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0896970   0.0857403   0.0936538
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0823542   0.0680362   0.0966721
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1301022   0.0536988   0.2065057
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.2530545   0.2127180   0.2933910
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1355142   0.0673491   0.2036793
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0520833   0.0206334   0.0835333
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1280788   0.0955514   0.1606063
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0573248   0.0209385   0.0937112
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0416667   0.0058871   0.0774462
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.0769231   0.0286030   0.1252431
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.0796460   0.0298616   0.1294305
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.2666084   0.2180473   0.3151695
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1410788   0.1062814   0.1758762
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0465714   0.0357513   0.0573915
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0654430   0.0395919   0.0912941
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0517787   0.0310355   0.0725219
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0352126   0.0304100   0.0400151
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0807064   0.0693559   0.0920568
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0479985   0.0400844   0.0559126
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0258384   0.0131485   0.0385282
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.0403868   0.0377543   0.0430193
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0339533   0.0250637   0.0428430
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0091266   0.0066666   0.0115866
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0226514   0.0162344   0.0290684
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0110132   0.0072628   0.0147636
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0723513   0.0473025   0.0974001
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1729549   0.1423850   0.2035247
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1021752   0.0755226   0.1288279
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0821819   0.0582363   0.1061275
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0877110   0.0829766   0.0924455
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0807856   0.0632683   0.0983029
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1111111   0.0384528   0.1837694
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.2448454   0.2020204   0.2876703
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1341463   0.0603128   0.2079799
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0372340   0.0101510   0.0643171
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1227621   0.0902124   0.1553119
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0529801   0.0172287   0.0887316
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.0660377   0.0197187   0.1123567
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.2611586   0.2166229   0.3056943
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1345291   0.0934755   0.1755828
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0511137   0.0388757   0.0633517
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0805346   0.0490834   0.1119858
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0558229   0.0327233   0.0789225
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0313549   0.0264601   0.0362497
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0709804   0.0596449   0.0823160
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0447382   0.0363995   0.0530769


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888740   0.0849641   0.0927839
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2323097   0.1910149   0.2736046
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0493197   0.0405669   0.0580726
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0477427   0.0437874   0.0516981
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396491   0.0371433   0.0421548
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123290   0.0102772   0.0143808
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0869137   0.0822507   0.0915768
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2257598   0.1896749   0.2618446
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0556399   0.0455330   0.0657467
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0427017   0.0386866   0.0467168


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.3432092   1.6607958    3.306023
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3771849   0.9293597    2.040801
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1334766   0.8931415    1.438484
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0406868   0.7803446    1.387886
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.9450433   1.0586832    3.573490
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0415978   0.4803480    2.258625
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.4591133   1.2772751    4.734484
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1006369   0.4583186    2.643143
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           4.2222222   1.7466447   10.206518
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.8461538   0.6370959    5.349719
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           3.3474165   1.8965196    5.908295
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.7713232   0.9040136    3.470729
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4052192   0.8884010    2.222691
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1118136   0.6996493    1.766784
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.2919762   1.8844324    2.787659
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3631067   1.1006222    1.688191
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.5630542   0.9507002    2.569831
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.3140657   0.7672684    2.250541
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.4819062   1.6786698    3.669488
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2067114   0.7815265    1.863215
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.3904883   1.6983921    3.364614
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.4122106   0.9503409    2.098551
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0672797   0.7982724    1.426939
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9830095   0.6822044    1.416449
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.2036082   1.1198381    4.336242
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2073171   0.5135934    2.838071
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           3.2970406   1.5201868    7.150750
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.4228950   0.5275590    3.837732
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           3.9546873   2.0214274    7.736885
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           2.0371557   0.8492977    4.886394
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5755973   0.9964550    2.491339
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0921317   0.6771578    1.761409
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.2637766   1.8110420    2.829688
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4268334   1.1190481    1.819273


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0462105    0.0268785   0.0655425
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0097396   -0.0086686   0.0281477
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0894490    0.0158018   0.1630963
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0419564    0.0116234   0.0722894
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0928625    0.0542558   0.1314692
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1526637    0.1063576   0.1989699
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0027483   -0.0042654   0.0097621
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0125302    0.0086233   0.0164370
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0138107    0.0011873   0.0264341
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0032024    0.0012071   0.0051977
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0476736    0.0285216   0.0668256
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0047318   -0.0185704   0.0280341
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0992210    0.0281155   0.1703265
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0490673    0.0212967   0.0768380
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1597220    0.1110245   0.2084196
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0045262   -0.0034431   0.0124954
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0113468    0.0073340   0.0153596


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3850077    0.1981301   0.5283330
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1095884   -0.1235447   0.2943470
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4074176   -0.0390121   0.6620309
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4461561    0.0326597   0.6829006
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.6902778    0.2881910   0.8652337
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.6571559    0.4006051   0.8038988
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0557249   -0.0973337   0.1874345
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2624520    0.1788902   0.3375099
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.3483233   -0.0608359   0.5996718
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2597439    0.0858168   0.4005807
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3971977    0.2124713   0.5385938
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0544430   -0.2557123   0.2879914
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4717349    0.0102035   0.7180592
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.5685579    0.1453269   0.7822065
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.7074867    0.4298826   0.8499186
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0813473   -0.0728375   0.2133731
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2657233    0.1690320   0.3511635
