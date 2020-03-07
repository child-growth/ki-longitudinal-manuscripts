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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        mwtkg         ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      764    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      173    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      865    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      336    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      855    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      224    3217
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 0      506   26925
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 1      155   26925
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                  0    18166   26925
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                  1     6340   26925
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              0     1306   26925
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              1      452   26925
0-24 months   LCNI-5           MALAWI                         >=58 kg                 0      109     838
0-24 months   LCNI-5           MALAWI                         >=58 kg                 1        5     838
0-24 months   LCNI-5           MALAWI                         <52 kg                  0      457     838
0-24 months   LCNI-5           MALAWI                         <52 kg                  1       47     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg              0      206     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg              1       14     838
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                 0       39     254
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                 1        9     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                  0       97     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                  1       65     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg              0       33     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg              1       11     254
0-24 months   MAL-ED           BRAZIL                         >=58 kg                 0      132     221
0-24 months   MAL-ED           BRAZIL                         >=58 kg                 1       11     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                  0       40     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                  1        2     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg              0       30     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg              1        6     221
0-24 months   MAL-ED           INDIA                          >=58 kg                 0       31     242
0-24 months   MAL-ED           INDIA                          >=58 kg                 1       11     242
0-24 months   MAL-ED           INDIA                          <52 kg                  0       66     242
0-24 months   MAL-ED           INDIA                          <52 kg                  1       84     242
0-24 months   MAL-ED           INDIA                          [52-58) kg              0       28     242
0-24 months   MAL-ED           INDIA                          [52-58) kg              1       22     242
0-24 months   MAL-ED           NEPAL                          >=58 kg                 0       66     238
0-24 months   MAL-ED           NEPAL                          >=58 kg                 1       14     238
0-24 months   MAL-ED           NEPAL                          <52 kg                  0       37     238
0-24 months   MAL-ED           NEPAL                          <52 kg                  1       39     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg              0       61     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg              1       21     238
0-24 months   MAL-ED           PERU                           >=58 kg                 0       96     290
0-24 months   MAL-ED           PERU                           >=58 kg                 1        8     290
0-24 months   MAL-ED           PERU                           <52 kg                  0      101     290
0-24 months   MAL-ED           PERU                           <52 kg                  1       14     290
0-24 months   MAL-ED           PERU                           [52-58) kg              0       66     290
0-24 months   MAL-ED           PERU                           [52-58) kg              1        5     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 0      155     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 1       39     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  0       25     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  1        5     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              0       33     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              1       13     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       90     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        8     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       77     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       22     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       53     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     256
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 0       49     624
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 1       33     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                  0      224     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                  1      224     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              0       53     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              1       41     624
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 0      149     755
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 1       43     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  0      240     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  1      166     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              0      117     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              1       40     755
0-24 months   PROBIT           BELARUS                        >=58 kg                 0     7443   13772
0-24 months   PROBIT           BELARUS                        >=58 kg                 1     2836   13772
0-24 months   PROBIT           BELARUS                        <52 kg                  0      798   13772
0-24 months   PROBIT           BELARUS                        <52 kg                  1      333   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg              0     1667   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg              1      695   13772
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                 0       92     669
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                 1       28     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                  0      256     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                  1      176     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg              0       80     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg              1       37     669
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                 0       83    1498
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                 1       30    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg                  0      628    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg                  1      516    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg              0      162    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg              1       79    1498
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1147    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      329    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      292    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1      101    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      355    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1      128    2352
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4539   11168
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 1     1283   11168
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  0     1680   11168
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  1      719   11168
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2204   11168
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              1      743   11168
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                 0      551   26828
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                 1      108   26828
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                  0    20107   26828
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                  1     4310   26828
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg              0     1443   26828
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg              1      309   26828
0-6 months    LCNI-5           MALAWI                         >=58 kg                 0       33     271
0-6 months    LCNI-5           MALAWI                         >=58 kg                 1        0     271
0-6 months    LCNI-5           MALAWI                         <52 kg                  0      164     271
0-6 months    LCNI-5           MALAWI                         <52 kg                  1        3     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg              0       70     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg              1        1     271
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                 0       41     254
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                 1        7     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                  0      121     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                  1       41     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg              0       34     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg              1       10     254
0-6 months    MAL-ED           BRAZIL                         >=58 kg                 0      134     221
0-6 months    MAL-ED           BRAZIL                         >=58 kg                 1        9     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                  0       40     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                  1        2     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg              0       33     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg              1        3     221
0-6 months    MAL-ED           INDIA                          >=58 kg                 0       32     242
0-6 months    MAL-ED           INDIA                          >=58 kg                 1       10     242
0-6 months    MAL-ED           INDIA                          <52 kg                  0       97     242
0-6 months    MAL-ED           INDIA                          <52 kg                  1       53     242
0-6 months    MAL-ED           INDIA                          [52-58) kg              0       34     242
0-6 months    MAL-ED           INDIA                          [52-58) kg              1       16     242
0-6 months    MAL-ED           NEPAL                          >=58 kg                 0       72     238
0-6 months    MAL-ED           NEPAL                          >=58 kg                 1        8     238
0-6 months    MAL-ED           NEPAL                          <52 kg                  0       50     238
0-6 months    MAL-ED           NEPAL                          <52 kg                  1       26     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg              0       68     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg              1       14     238
0-6 months    MAL-ED           PERU                           >=58 kg                 0      100     290
0-6 months    MAL-ED           PERU                           >=58 kg                 1        4     290
0-6 months    MAL-ED           PERU                           <52 kg                  0      110     290
0-6 months    MAL-ED           PERU                           <52 kg                  1        5     290
0-6 months    MAL-ED           PERU                           [52-58) kg              0       69     290
0-6 months    MAL-ED           PERU                           [52-58) kg              1        2     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                 0      177     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                 1       17     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                  0       27     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                  1        3     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg              0       38     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg              1        8     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       92     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       94     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       57     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     256
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                 0       60     622
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                 1       22     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                  0      274     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                  1      172     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg              0       66     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg              1       28     622
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                 0      159     755
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                 1       33     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                  0      275     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                  1      131     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg              0      127     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg              1       30     755
0-6 months    PROBIT           BELARUS                        >=58 kg                 0     7499   13772
0-6 months    PROBIT           BELARUS                        >=58 kg                 1     2780   13772
0-6 months    PROBIT           BELARUS                        <52 kg                  0      805   13772
0-6 months    PROBIT           BELARUS                        <52 kg                  1      326   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg              0     1684   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg              1      678   13772
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                 0       96     669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                 1       24     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                  0      306     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                  1      126     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg              0       91     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg              1       26     669
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                 0       95    1491
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                 1       18    1491
0-6 months    SAS-CompFeed     INDIA                          <52 kg                  0      873    1491
0-6 months    SAS-CompFeed     INDIA                          <52 kg                  1      266    1491
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg              0      194    1491
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg              1       45    1491
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1284    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      192    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      335    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       58    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      403    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       80    2352
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4849   11118
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                 1      953   11118
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                  0     1868   11118
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                  1      513   11118
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2395   11118
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg              1      540   11118
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      764    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      173    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      865    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      336    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      855    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      224    3217
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 0      367   17288
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                 1       61   17288
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                  0    13083   17288
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                  1     2594   17288
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              0     1005   17288
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg              1      178   17288
6-24 months   LCNI-5           MALAWI                         >=58 kg                 0      109     824
6-24 months   LCNI-5           MALAWI                         >=58 kg                 1        5     824
6-24 months   LCNI-5           MALAWI                         <52 kg                  0      451     824
6-24 months   LCNI-5           MALAWI                         <52 kg                  1       45     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg              0      201     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg              1       13     824
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                 0       41     240
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                 1        3     240
6-24 months   MAL-ED           BANGLADESH                     <52 kg                  0      119     240
6-24 months   MAL-ED           BANGLADESH                     <52 kg                  1       36     240
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg              0       37     240
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg              1        4     240
6-24 months   MAL-ED           BRAZIL                         >=58 kg                 0      133     206
6-24 months   MAL-ED           BRAZIL                         >=58 kg                 1        2     206
6-24 months   MAL-ED           BRAZIL                         <52 kg                  0       37     206
6-24 months   MAL-ED           BRAZIL                         <52 kg                  1        0     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg              0       30     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg              1        4     206
6-24 months   MAL-ED           INDIA                          >=58 kg                 0       37     234
6-24 months   MAL-ED           INDIA                          >=58 kg                 1        3     234
6-24 months   MAL-ED           INDIA                          <52 kg                  0       94     234
6-24 months   MAL-ED           INDIA                          <52 kg                  1       51     234
6-24 months   MAL-ED           INDIA                          [52-58) kg              0       39     234
6-24 months   MAL-ED           INDIA                          [52-58) kg              1       10     234
6-24 months   MAL-ED           NEPAL                          >=58 kg                 0       72     235
6-24 months   MAL-ED           NEPAL                          >=58 kg                 1        7     235
6-24 months   MAL-ED           NEPAL                          <52 kg                  0       57     235
6-24 months   MAL-ED           NEPAL                          <52 kg                  1       18     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg              0       70     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg              1       11     235
6-24 months   MAL-ED           PERU                           >=58 kg                 0       96     269
6-24 months   MAL-ED           PERU                           >=58 kg                 1        4     269
6-24 months   MAL-ED           PERU                           <52 kg                  0       95     269
6-24 months   MAL-ED           PERU                           <52 kg                  1       10     269
6-24 months   MAL-ED           PERU                           [52-58) kg              0       60     269
6-24 months   MAL-ED           PERU                           [52-58) kg              1        4     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 0      156     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                 1       26     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  0       26     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                  1        4     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              0       35     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg              1        7     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       91     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       74     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       18     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       52     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     245
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 0       55     542
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                 1       17     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                  0      265     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                  1      123     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              0       63     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg              1       19     542
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 0      174     730
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                 1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  0      324     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                  1       67     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              0      136     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg              1       15     730
6-24 months   PROBIT           BELARUS                        >=58 kg                 0    10186   13764
6-24 months   PROBIT           BELARUS                        >=58 kg                 1       86   13764
6-24 months   PROBIT           BELARUS                        <52 kg                  0     1119   13764
6-24 months   PROBIT           BELARUS                        <52 kg                  1       12   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg              0     2334   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg              1       27   13764
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                 0      107     614
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                 1        7     614
6-24 months   PROVIDE          BANGLADESH                     <52 kg                  0      313     614
6-24 months   PROVIDE          BANGLADESH                     <52 kg                  1       79     614
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg              0       95     614
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg              1       13     614
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                 0       92    1382
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                 1       14    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg                  0      691    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg                  1      362    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg              0      176    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg              1       47    1382
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1066    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      189    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      246    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       65    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      347    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       65    1978
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4608    9744
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                 1      413    9744
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  0     1842    9744
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                  1      285    9744
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2324    9744
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg              1      272    9744


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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/daa0878b-f67b-47fc-82d4-72b194b532c0/3cc1e131-f4f8-4512-9702-2bdbc0196b4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/daa0878b-f67b-47fc-82d4-72b194b532c0/3cc1e131-f4f8-4512-9702-2bdbc0196b4b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/daa0878b-f67b-47fc-82d4-72b194b532c0/3cc1e131-f4f8-4512-9702-2bdbc0196b4b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/daa0878b-f67b-47fc-82d4-72b194b532c0/3cc1e131-f4f8-4512-9702-2bdbc0196b4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1804536   0.1346359   0.2262712
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2817452   0.2546668   0.3088236
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2080507   0.1758023   0.2402992
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2412258   0.2108214   0.2716302
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.2585829   0.2519854   0.2651804
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2560655   0.2329546   0.2791765
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0438596   0.0062458   0.0814735
0-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.0932540   0.0678519   0.1186560
0-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.0636364   0.0313610   0.0959117
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1875000   0.0768640   0.2981360
0-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.4012346   0.3256079   0.4768612
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2615063   0.1264981   0.3965145
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.5575892   0.4772611   0.6379172
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.4432977   0.3033727   0.5832227
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1785978   0.0934927   0.2637028
0-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.4918406   0.3797031   0.6039781
0-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2498899   0.1510997   0.3486802
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   MAL-ED           PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2010309   0.1445308   0.2575311
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2826087   0.1522483   0.4129691
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0816327   0.0273170   0.1359483
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2222222   0.1401678   0.3042766
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1016949   0.0244209   0.1789689
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4104755   0.3025205   0.5184305
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.4991239   0.4527750   0.5454728
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4392338   0.3381606   0.5403070
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1959983   0.1396249   0.2523716
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.4147423   0.3658474   0.4636372
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2481023   0.1753762   0.3208284
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.2761459   0.2132160   0.3390758
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.2970366   0.2340544   0.3600187
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.2917661   0.2279380   0.3555942
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.2435948   0.1627508   0.3244389
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.4020887   0.3557258   0.4484515
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.3010798   0.2165119   0.3856477
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2812728   0.2037870   0.3587586
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.4476586   0.3839163   0.5114010
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.3249240   0.2593849   0.3904631
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2223360   0.2010854   0.2435866
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2746531   0.2293409   0.3199652
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2614459   0.2204789   0.3024129
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2218618   0.2110750   0.2326486
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3002154   0.2814707   0.3189600
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2533605   0.2371918   0.2695293
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1660137   0.1384055   0.1936218
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.1765934   0.1708662   0.1823207
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1738706   0.1533622   0.1943789
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.1458333   0.0457910   0.2458757
0-6 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.2530864   0.1860028   0.3201701
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2272727   0.1032032   0.3513423
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.2256980   0.0952262   0.3561699
0-6 months    MAL-ED           INDIA                          <52 kg               NA                0.3572197   0.2798925   0.4345470
0-6 months    MAL-ED           INDIA                          [52-58) kg           NA                0.3210736   0.1887760   0.4533712
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1000000   0.0341223   0.1658777
0-6 months    MAL-ED           NEPAL                          <52 kg               NA                0.3421053   0.2352210   0.4489895
0-6 months    MAL-ED           NEPAL                          [52-58) kg           NA                0.1707317   0.0891186   0.2523448
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2753220   0.1762865   0.3743575
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3850384   0.3397733   0.4303036
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2899244   0.1962080   0.3836407
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1632356   0.1086185   0.2178527
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3222884   0.2760857   0.3684911
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1841292   0.1196242   0.2486342
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.2708797   0.2076108   0.3341487
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.2908802   0.2256209   0.3561396
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.2835568   0.2208261   0.3462876
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.2043381   0.1282274   0.2804487
0-6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.2865988   0.2441873   0.3290103
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2113306   0.1370115   0.2856496
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1630601   0.0962722   0.2298480
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.2337021   0.1844236   0.2829805
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1858174   0.1266617   0.2449731
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1302140   0.1130386   0.1473894
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1621160   0.1249126   0.1993193
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1607798   0.1270748   0.1944848
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1670851   0.1573668   0.1768033
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2166387   0.1995828   0.2336946
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1839433   0.1695558   0.1983308
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1796410   0.1347049   0.2245770
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2816696   0.2549928   0.3083463
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2088282   0.1766213   0.2410351
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1557000   0.1240695   0.1873306
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.1650946   0.1588028   0.1713865
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1529745   0.1285038   0.1774451
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0438596   0.0062454   0.0814739
6-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.0907258   0.0654338   0.1160178
6-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.0607477   0.0287248   0.0927706
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2352972   0.1319642   0.3386303
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.3188590   0.2723852   0.3653327
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2225723   0.1319486   0.3131960
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0728334   0.0349635   0.1107034
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1749925   0.1372817   0.2127033
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0984463   0.0501336   0.1467589
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0083580   0.0032268   0.0134892
6-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0105170   0.0020127   0.0190213
6-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0115262   0.0067246   0.0163277
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1227736   0.0799771   0.1655700
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.3442306   0.2925434   0.3959177
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2154400   0.1429075   0.2879725
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1496741   0.1299193   0.1694288
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2163181   0.1701239   0.2625123
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1605869   0.1238642   0.1973096
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0820785   0.0744175   0.0897394
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1354518   0.1203800   0.1505235
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1058465   0.0936207   0.1180723


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580130   0.2515531   0.2644729
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0787589   0.0605107   0.0970072
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3109244   0.2519946   0.3698541
0-24 months   MAL-ED           PERU                           NA                   NA                0.0931034   0.0596022   0.1266047
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2111111   0.1623431   0.2598792
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2805693   0.2183906   0.3427479
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4172230   0.3585449   0.4759011
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2372449   0.2200495   0.2544403
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2457915   0.2378059   0.2537772
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1761965   0.1705789   0.1818141
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.2016807   0.1505956   0.2527658
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2747604   0.2123223   0.3371985
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2206573   0.1756202   0.2656944
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1403061   0.1262673   0.1543450
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1804281   0.1732799   0.1875764
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1638709   0.1577615   0.1699803
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0764563   0.0583018   0.0946108
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0090817   0.0046144   0.0135489
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3060781   0.2622443   0.3499120
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612740   0.1450620   0.1774860
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0995484   0.0936035   0.1054934


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5613171   1.2220374   1.994792
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1529323   0.9130251   1.455878
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0719538   0.9426830   1.218952
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0615179   0.9050978   1.244971
0-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           2.1261905   0.8646020   5.228632
0-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4509091   0.5357128   3.929600
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.1399177   1.1518112   3.975693
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.3333333   0.6101437   2.913704
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           2.1322206   1.2470564   3.645677
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.6951701   0.9259160   3.103523
0-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.7539008   1.6276363   4.659499
0-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.3991771   0.7517823   2.604074
0-24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <52 kg               >=58 kg           1.5826087   0.6910535   3.624394
0-24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           0.9154930   0.3116133   2.689640
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           0.8290598   0.3545375   1.938695
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.4057971   0.8191006   2.412726
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.7222222   1.2718747   5.826434
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2457627   0.4537299   3.420371
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2159652   0.9197902   1.607509
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0700609   0.7546197   1.517361
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.1160505   1.5502120   2.888424
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.2658390   0.8397202   1.908193
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.0756509   0.9623033   1.202349
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0565651   0.9927963   1.124430
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.6506455   1.1612343   2.346323
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2359859   0.7995806   1.910578
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.5915459   1.2879810   1.966658
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.1551915   0.8460216   1.577344
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2353063   1.0209506   1.494668
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1759045   0.9787119   1.412828
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3531638   1.2502018   1.464605
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1419745   1.0539339   1.237370
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0637283   0.8991800   1.258389
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0473268   0.8532178   1.285596
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.7354497   0.8317982   3.620813
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.5584416   0.6485470   3.744895
0-6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           1.5827330   0.8533855   2.935419
0-6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.4225802   0.6992595   2.894111
0-6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           3.4210526   1.6501048   7.092641
0-6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.7073171   0.7565308   3.853024
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3985023   0.9583504   2.040808
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0530374   0.6494608   1.707398
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.9743758   1.3710570   2.843179
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1279968   0.6953086   1.829946
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.0738353   0.9533348   1.209567
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0467998   0.9790103   1.119283
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.4025717   0.9389298   2.095159
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.0342202   0.6196566   1.726136
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.4332264   1.0713939   1.917258
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.1395638   0.6976245   1.861468
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2449968   0.9557226   1.621827
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2347356   0.9640736   1.581386
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2965774   1.1756448   1.429950
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1008961   0.9986679   1.213589
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5679584   1.2353176   1.990171
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1624754   0.9264942   1.458562
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0603378   0.8625064   1.303546
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9824946   0.7505056   1.286194
6-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685484   0.8395155   5.096859
6-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790118
6-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3551326   0.8533056   2.152083
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9459197   0.5196805   1.721758
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.4026399   1.3687061   4.217617
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3516630   0.6615937   2.761503
6-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.2583222   0.5267398   3.005990
6-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3790618   0.7691931   2.472476
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.8037843   2.0925949   3.756679
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.7547755   1.0379995   2.966511
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4452612   1.1245417   1.857450
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0729105   0.8238645   1.397241
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6502719   1.4273678   1.907986
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2895773   1.1117065   1.495907


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0473985    0.0194352   0.0753618
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0167872   -0.0135560   0.0471304
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2219648    0.0953705   0.3485590
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1323266    0.0554230   0.2092302
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.0161804   -0.0270227   0.0593834
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0100802   -0.0212756   0.0414360
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0589923    0.0088725   0.1091122
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0670886   -0.0338973   0.1680745
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1338030    0.0816665   0.1859396
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0044234    0.0000460   0.0088008
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1166443    0.0409440   0.1923446
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1359501    0.0770541   0.1948461
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0149089    0.0013218   0.0284960
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0239297    0.0160731   0.0317863
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0101829   -0.0170307   0.0373964
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.0825131   -0.0118328   0.1768591
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.1007482   -0.0207286   0.2222250
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1016807    0.0381826   0.1651787
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0815912   -0.0118802   0.1750626
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0937180    0.0429495   0.1444866
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0038807   -0.0009658   0.0087271
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.0587411   -0.0121329   0.1296152
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0575972    0.0126409   0.1025534
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0100922   -0.0010233   0.0212076
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0133431    0.0062737   0.0204125
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0482111    0.0210630   0.0753591
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0081708   -0.0233074   0.0396491
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0580607   -0.0392297   0.1553511
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0586734    0.0225417   0.0948051
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0007237   -0.0005703   0.0020177
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1833046    0.1406184   0.2259908
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0115999   -0.0009901   0.0241900
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0174700    0.0115777   0.0233623


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2080231    0.0616987   0.3315287
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0650633   -0.0600903   0.1754414
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4431154   -0.2685075   0.7555233
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.4591066    0.1219956   0.6667834
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.4255909    0.1256396   0.6226432
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.1737892   -0.4426530   0.5268271
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0477482   -0.1127541   0.1850999
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4195011   -0.0382341   0.6754307
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1404808   -0.0995119   0.3280898
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4057080    0.2278461   0.5426003
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0157657   -0.0008228   0.0320793
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.3237969    0.0780815   0.5040228
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.3258453    0.1670730   0.4543524
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0628418    0.0038904   0.1183045
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0973579    0.0648973   0.1286915
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0577926   -0.1099800   0.2002065
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.3613506   -0.2099737   0.6629075
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.3086212   -0.1832633   0.5960285
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.5041667    0.1014472   0.7263926
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2286024   -0.0831137   0.4506077
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3647274    0.1370478   0.5323365
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0141238   -0.0043939   0.0323000
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.2232831   -0.0979281   0.4505203
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2610255    0.0104655   0.4481412
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0719296   -0.0104846   0.1476221
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0739523    0.0340167   0.1122369
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2115893    0.0694351   0.3320279
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0498615   -0.1628723   0.2236781
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477627
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1979176   -0.2129696   0.4696188
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4461624    0.1063699   0.6567528
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0796866   -0.0979366   0.2285741
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5988817    0.4579734   0.7031586
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0719269   -0.0092815   0.1466013
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1754923    0.1149612   0.2318835
