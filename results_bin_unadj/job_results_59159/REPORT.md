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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/baf2a857-c8d2-4d67-af0d-1f421e5649e9/3a544bfd-46a5-42df-b258-e891a0cffbdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baf2a857-c8d2-4d67-af0d-1f421e5649e9/3a544bfd-46a5-42df-b258-e891a0cffbdf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baf2a857-c8d2-4d67-af0d-1f421e5649e9/3a544bfd-46a5-42df-b258-e891a0cffbdf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baf2a857-c8d2-4d67-af0d-1f421e5649e9/3a544bfd-46a5-42df-b258-e891a0cffbdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1846318   0.1344824   0.2347812
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2797669   0.2532143   0.3063194
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2075996   0.1755168   0.2396824
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2344932   0.2006722   0.2683141
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.2587122   0.2521138   0.2653105
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2571104   0.2344043   0.2798164
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0438596   0.0062458   0.0814735
0-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.0932540   0.0678519   0.1186560
0-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.0636364   0.0313610   0.0959117
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1875000   0.0768640   0.2981360
0-24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.4012346   0.3256079   0.4768612
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2619048   0.1286599   0.3951496
0-24 months   MAL-ED           INDIA                          <52 kg               NA                0.5600000   0.4803984   0.6396016
0-24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.4400000   0.3021259   0.5778741
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1750000   0.0915621   0.2584379
0-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.5131579   0.4005484   0.6257674
0-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.2560976   0.1614267   0.3507684
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   MAL-ED           PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-24 months   MAL-ED           PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.2010309   0.1445308   0.2575311
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2826087   0.1522483   0.4129691
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0816327   0.0273170   0.1359483
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2222222   0.1401678   0.3042766
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1016949   0.0244209   0.1789689
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4024390   0.2962131   0.5086650
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.5000000   0.4536631   0.5463369
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4361702   0.3358394   0.5365011
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2239583   0.1649503   0.2829664
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.4088670   0.3610143   0.4567197
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2547771   0.1865731   0.3229810
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.2759023   0.2129897   0.3388149
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.2944297   0.2279796   0.3608798
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.2942422   0.2312514   0.3572330
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.2333333   0.1576023   0.3090644
0-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.4074074   0.3610388   0.4537760
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.3162393   0.2319175   0.4005611
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.2654867   0.1833464   0.3476271
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.4510490   0.3872101   0.5148878
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.3278008   0.2615525   0.3940491
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2228997   0.2016629   0.2441366
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2569975   0.2137855   0.3002094
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2650104   0.2256428   0.3043779
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2203710   0.2097234   0.2310186
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2997082   0.2813749   0.3180415
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2521208   0.2364426   0.2677990
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1638847   0.1328930   0.1948763
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.1765164   0.1708008   0.1822319
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1763699   0.1558444   0.1968953
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.1458333   0.0457910   0.2458757
0-6 months    MAL-ED           BANGLADESH                     <52 kg               NA                0.2530864   0.1860028   0.3201701
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2272727   0.1032032   0.3513423
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.2380952   0.1090184   0.3671721
0-6 months    MAL-ED           INDIA                          <52 kg               NA                0.3533333   0.2766794   0.4299872
0-6 months    MAL-ED           INDIA                          [52-58) kg           NA                0.3200000   0.1904338   0.4495662
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1000000   0.0341223   0.1658777
0-6 months    MAL-ED           NEPAL                          <52 kg               NA                0.3421053   0.2352210   0.4489895
0-6 months    MAL-ED           NEPAL                          [52-58) kg           NA                0.1707317   0.0891186   0.2523448
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2682927   0.1723165   0.3642689
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3856502   0.3404402   0.4308602
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2978723   0.2053479   0.3903968
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1718750   0.1184752   0.2252748
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3226601   0.2771562   0.3681640
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1910828   0.1295440   0.2526216
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.2704543   0.2072483   0.3336604
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.2882405   0.2205713   0.3559097
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.2870449   0.2243787   0.3497110
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.2000000   0.1283787   0.2716213
0-6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.2916667   0.2487730   0.3345603
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2222222   0.1468343   0.2976101
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1592920   0.0955772   0.2230068
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.2335382   0.1843496   0.2827268
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1882845   0.1316272   0.2449418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1300813   0.1129163   0.1472463
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1475827   0.1125085   0.1826569
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1656315   0.1324713   0.1987917
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1642537   0.1547197   0.1737877
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2154557   0.1989408   0.2319706
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1839864   0.1699678   0.1980050
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1846318   0.1344824   0.2347812
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2797669   0.2532143   0.3063194
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2075996   0.1755168   0.2396824
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1425234   0.1081797   0.1768671
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.1654653   0.1591678   0.1717628
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1504649   0.1268492   0.1740807
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0438596   0.0062454   0.0814739
6-24 months   LCNI-5           MALAWI                         <52 kg               NA                0.0907258   0.0654338   0.1160178
6-24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.0607477   0.0287248   0.0927706
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   MAL-ED           NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2361111   0.1379236   0.3342986
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.3170103   0.2706681   0.3633525
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2317073   0.1403012   0.3231135
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0744681   0.0369148   0.1120213
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1713555   0.1339797   0.2087313
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0993377   0.0515963   0.1470792
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0083723   0.0032372   0.0135073
6-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0106101   0.0021094   0.0191107
6-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0114358   0.0067633   0.0161083
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1320755   0.0901464   0.1740045
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.3437797   0.2927190   0.3948403
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2107623   0.1388132   0.2827115
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1505976   0.1308051   0.1703902
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2090032   0.1638029   0.2542035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1577670   0.1225596   0.1929744
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0822545   0.0746545   0.0898546
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1339915   0.1195143   0.1484688
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1047766   0.0929947   0.1165585


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
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5152691   1.1564798   1.985370
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1243980   0.8649036   1.461748
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1032821   0.9530158   1.277242
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0964512   0.9211976   1.305046
0-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           2.1261905   0.8646020   5.228632
0-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4509091   0.5357128   3.929600
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.1399177   1.1518112   3.975693
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.3333333   0.6101437   2.913704
0-24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           2.1381818   1.2607642   3.626230
0-24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.6800000   0.9243023   3.053546
0-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.9323308   1.7348713   4.956312
0-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.4634146   0.8004866   2.675351
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
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2424242   0.9392374   1.643480
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0838169   0.7636604   1.538196
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8256387   1.3683797   2.435696
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1376092   0.7813886   1.656224
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.0671520   0.9446566   1.205531
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0664722   1.0060052   1.130574
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.7460317   1.2378883   2.462764
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.3553114   0.8904640   2.062822
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.6989510   1.3268488   2.175406
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2347165   0.8895032   1.713906
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.1529734   0.9503598   1.398784
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1889218   0.9965737   1.418395
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3600165   1.2580286   1.470273
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1440743   1.0574348   1.237812
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0770767   0.8900311   1.303431
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0761828   0.8618816   1.343768
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           1.7354497   0.8317982   3.620813
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.5584416   0.6485470   3.744895
0-6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           1.4840000   0.8276388   2.660890
0-6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.3440000   0.6831875   2.643983
0-6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           3.4210526   1.6501048   7.092641
0-6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.7073171   0.7565308   3.853024
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4374236   0.9864958   2.094471
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.1102515   0.6913015   1.783098
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8772951   1.3346017   2.640666
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1117545   0.7106684   1.739205
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.0657640   0.9424680   1.205190
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0613433   0.9958012   1.131199
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.4583333   0.9902143   2.147753
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.1111111   0.6784652   1.819648
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.4661009   1.0915973   1.969089
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.1820084   0.7195718   1.941632
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.1345420   0.8644991   1.488938
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2732919   1.0018275   1.618315
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3117250   1.1914783   1.444107
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1201353   1.0178222   1.232733
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5152691   1.1564798   1.985370
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1243980   0.8649036   1.461748
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1609699   0.9098592   1.481384
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0557211   0.7844425   1.420814
6-24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685484   0.8395155   5.096859
6-24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790118
6-24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3426319   0.8640132   2.086381
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9813486   0.5532057   1.740844
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.3010596   1.3283439   3.986072
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3339640   0.6646702   2.677208
6-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.2672876   0.5393152   2.977884
6-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3659171   0.7614050   2.450377
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.6029033   1.9960826   3.394201
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.5957719   0.9512247   2.677063
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3878256   1.0775274   1.787481
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0476062   0.8085781   1.357295
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6289867   1.4131092   1.877843
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2738092   1.1012792   1.473368


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0432202    0.0111479   0.0752926
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0235198   -0.0101593   0.0571989
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2215663    0.0967779   0.3463547
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1359244    0.0600670   0.2117818
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.0161804   -0.0270227   0.0593834
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0100802   -0.0212756   0.0414360
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0589923    0.0088725   0.1091122
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0751251   -0.0241559   0.1744060
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1058430    0.0525785   0.1591075
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0046669    0.0004386   0.0088953
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1269058    0.0561735   0.1976382
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1517362    0.0928462   0.2106263
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0143452    0.0009053   0.0277850
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0254205    0.0177434   0.0330977
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0123118   -0.0182303   0.0428540
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.0825131   -0.0118328   0.1768591
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.0883510   -0.0315761   0.2082782
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.1016807    0.0381826   0.1651787
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0886205   -0.0019473   0.1791883
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0850786    0.0363554   0.1338019
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0043061   -0.0001695   0.0087817
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.0630792   -0.0032855   0.1294439
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0613652    0.0161260   0.1066045
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0102248   -0.0008172   0.0212669
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0161744    0.0093097   0.0230391
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0432202    0.0111479   0.0752926
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0213475   -0.0127645   0.0554595
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0572468   -0.0352267   0.1497204
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0570388    0.0211819   0.0928957
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0007094   -0.0005813   0.0020001
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1740027    0.1320148   0.2159906
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0106764   -0.0018722   0.0232250
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0172939    0.0114994   0.0230884


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1896855    0.0225601   0.3282354
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0911574   -0.0490427   0.2126204
0-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4431154   -0.2685075   0.7555233
0-24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   MAL-ED           INDIA                          >=58 kg              NA                0.4582825    0.1274764   0.6636677
0-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.4371622    0.1425333   0.6305554
0-24 months   MAL-ED           PERU                           >=58 kg              NA                0.1737892   -0.4426530   0.5268271
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0477482   -0.1127541   0.1850999
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4195011   -0.0382341   0.6754307
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1573089   -0.0787476   0.3417104
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3209296    0.1399941   0.4637983
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0166338    0.0004925   0.0325146
0-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.3522822    0.1241081   0.5210158
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.3636814    0.1958129   0.4965085
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0604657    0.0021480   0.1153750
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1034232    0.0717164   0.1340470
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0698756   -0.1206568   0.2280140
0-6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                0.3613506   -0.2099737   0.6629075
0-6 months    MAL-ED           INDIA                          >=58 kg              NA                0.2706450   -0.2053628   0.5586733
0-6 months    MAL-ED           NEPAL                          >=58 kg              NA                0.5041667    0.1014472   0.7263926
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2482971   -0.0532266   0.4634989
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3311050    0.1149312   0.4944794
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0156721   -0.0016213   0.0326669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.2397727   -0.0582110   0.4538466
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2781021    0.0309817   0.4622015
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0728751   -0.0090047   0.1481104
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0896447    0.0508954   0.1268120
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1896855    0.0225601   0.3282354
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1302704   -0.1046712   0.3152446
6-24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477627
6-24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1951433   -0.1902169   0.4557342
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4337323    0.0997469   0.6438122
6-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0781121   -0.0987192   0.2264837
6-24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.5684910    0.4337105   0.6711929
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0662004   -0.0147437   0.1406878
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1737236    0.1142323   0.2292191
