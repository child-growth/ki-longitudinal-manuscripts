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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        mwtkg         ever_swasted   n_cell       n
------------  ---------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      906    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       31    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1124    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1033    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       46    3217
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      634   26925
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1       27   26925
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0    23001   26925
0-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1     1505   26925
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0     1645   26925
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1      113   26925
0-24 months   LCNI-5           MALAWI                         >=58 kg                  0      113     838
0-24 months   LCNI-5           MALAWI                         >=58 kg                  1        1     838
0-24 months   LCNI-5           MALAWI                         <52 kg                   0      500     838
0-24 months   LCNI-5           MALAWI                         <52 kg                   1        4     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg               0      217     838
0-24 months   LCNI-5           MALAWI                         [52-58) kg               1        3     838
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       45     254
0-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1        3     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   0      144     254
0-24 months   MAL-ED           BANGLADESH                     <52 kg                   1       18     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       44     254
0-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1        0     254
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      140     221
0-24 months   MAL-ED           BRAZIL                         >=58 kg                  1        3     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                   0       42     221
0-24 months   MAL-ED           BRAZIL                         <52 kg                   1        0     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       35     221
0-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        1     221
0-24 months   MAL-ED           INDIA                          >=58 kg                  0       39     242
0-24 months   MAL-ED           INDIA                          >=58 kg                  1        3     242
0-24 months   MAL-ED           INDIA                          <52 kg                   0      131     242
0-24 months   MAL-ED           INDIA                          <52 kg                   1       19     242
0-24 months   MAL-ED           INDIA                          [52-58) kg               0       46     242
0-24 months   MAL-ED           INDIA                          [52-58) kg               1        4     242
0-24 months   MAL-ED           NEPAL                          >=58 kg                  0       78     238
0-24 months   MAL-ED           NEPAL                          >=58 kg                  1        2     238
0-24 months   MAL-ED           NEPAL                          <52 kg                   0       70     238
0-24 months   MAL-ED           NEPAL                          <52 kg                   1        6     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg               0       81     238
0-24 months   MAL-ED           NEPAL                          [52-58) kg               1        1     238
0-24 months   MAL-ED           PERU                           >=58 kg                  0      104     290
0-24 months   MAL-ED           PERU                           >=58 kg                  1        0     290
0-24 months   MAL-ED           PERU                           <52 kg                   0      113     290
0-24 months   MAL-ED           PERU                           <52 kg                   1        2     290
0-24 months   MAL-ED           PERU                           [52-58) kg               0       69     290
0-24 months   MAL-ED           PERU                           [52-58) kg               1        2     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0      187     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1        7     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0       28     270
0-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1        2     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       40     270
0-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1        6     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        4     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       95     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        4     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       58     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        1     256
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       77     624
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1        5     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0      371     624
0-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1       77     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       77     624
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1       17     624
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      185     755
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1        7     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      355     755
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1       51     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0      149     755
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1        8     755
0-24 months   PROBIT           BELARUS                        >=58 kg                  0     9357   13772
0-24 months   PROBIT           BELARUS                        >=58 kg                  1      922   13772
0-24 months   PROBIT           BELARUS                        <52 kg                   0     1037   13772
0-24 months   PROBIT           BELARUS                        <52 kg                   1       94   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg               0     2169   13772
0-24 months   PROBIT           BELARUS                        [52-58) kg               1      193   13772
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0      116     669
0-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1        4     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      401     669
0-24 months   PROVIDE          BANGLADESH                     <52 kg                   1       31     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0      111     669
0-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1        6     669
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0      100    1498
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       13    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      954    1498
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      190    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      223    1498
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1       18    1498
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1388    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       88    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      356    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       37    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      451    2352
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       32    2352
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5326   11168
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1      496   11168
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0     2110   11168
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1      289   11168
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2667   11168
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1      280   11168
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  0      640   26828
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg                  1       19   26828
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   0    23400   26828
0-6 months    JiVitA-3         BANGLADESH                     <52 kg                   1     1017   26828
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               0     1677   26828
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg               1       75   26828
0-6 months    LCNI-5           MALAWI                         >=58 kg                  0       33     271
0-6 months    LCNI-5           MALAWI                         >=58 kg                  1        0     271
0-6 months    LCNI-5           MALAWI                         <52 kg                   0      167     271
0-6 months    LCNI-5           MALAWI                         <52 kg                   1        0     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg               0       71     271
0-6 months    LCNI-5           MALAWI                         [52-58) kg               1        0     271
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  0       45     254
0-6 months    MAL-ED           BANGLADESH                     >=58 kg                  1        3     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   0      149     254
0-6 months    MAL-ED           BANGLADESH                     <52 kg                   1       13     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               0       44     254
0-6 months    MAL-ED           BANGLADESH                     [52-58) kg               1        0     254
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  0      140     221
0-6 months    MAL-ED           BRAZIL                         >=58 kg                  1        3     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                   0       42     221
0-6 months    MAL-ED           BRAZIL                         <52 kg                   1        0     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               0       36     221
0-6 months    MAL-ED           BRAZIL                         [52-58) kg               1        0     221
0-6 months    MAL-ED           INDIA                          >=58 kg                  0       39     242
0-6 months    MAL-ED           INDIA                          >=58 kg                  1        3     242
0-6 months    MAL-ED           INDIA                          <52 kg                   0      135     242
0-6 months    MAL-ED           INDIA                          <52 kg                   1       15     242
0-6 months    MAL-ED           INDIA                          [52-58) kg               0       47     242
0-6 months    MAL-ED           INDIA                          [52-58) kg               1        3     242
0-6 months    MAL-ED           NEPAL                          >=58 kg                  0       78     238
0-6 months    MAL-ED           NEPAL                          >=58 kg                  1        2     238
0-6 months    MAL-ED           NEPAL                          <52 kg                   0       72     238
0-6 months    MAL-ED           NEPAL                          <52 kg                   1        4     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg               0       81     238
0-6 months    MAL-ED           NEPAL                          [52-58) kg               1        1     238
0-6 months    MAL-ED           PERU                           >=58 kg                  0      104     290
0-6 months    MAL-ED           PERU                           >=58 kg                  1        0     290
0-6 months    MAL-ED           PERU                           <52 kg                   0      115     290
0-6 months    MAL-ED           PERU                           <52 kg                   1        0     290
0-6 months    MAL-ED           PERU                           [52-58) kg               0       70     290
0-6 months    MAL-ED           PERU                           [52-58) kg               1        1     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  0      192     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=58 kg                  1        2     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   0       29     270
0-6 months    MAL-ED           SOUTH AFRICA                   <52 kg                   1        1     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               0       44     270
0-6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg               1        2     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       95     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        3     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       98     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  0       79     622
0-6 months    NIH-Birth        BANGLADESH                     >=58 kg                  1        3     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   0      404     622
0-6 months    NIH-Birth        BANGLADESH                     <52 kg                   1       42     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               0       83     622
0-6 months    NIH-Birth        BANGLADESH                     [52-58) kg               1       11     622
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  0      186     755
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg                  1        6     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   0      368     755
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg                   1       38     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               0      151     755
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg               1        6     755
0-6 months    PROBIT           BELARUS                        >=58 kg                  0     9365   13772
0-6 months    PROBIT           BELARUS                        >=58 kg                  1      914   13772
0-6 months    PROBIT           BELARUS                        <52 kg                   0     1038   13772
0-6 months    PROBIT           BELARUS                        <52 kg                   1       93   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg               0     2170   13772
0-6 months    PROBIT           BELARUS                        [52-58) kg               1      192   13772
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  0      116     669
0-6 months    PROVIDE          BANGLADESH                     >=58 kg                  1        4     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   0      413     669
0-6 months    PROVIDE          BANGLADESH                     <52 kg                   1       19     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               0      112     669
0-6 months    PROVIDE          BANGLADESH                     [52-58) kg               1        5     669
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  0      106    1491
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  1        7    1491
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   0     1059    1491
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   1       80    1491
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               0      228    1491
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               1       11    1491
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1431    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      376    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       17    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      466    2352
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       17    2352
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5438   11118
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg                  1      364   11118
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   0     2188   11118
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg                   1      193   11118
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2741   11118
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg               1      194   11118
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      906    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1       31    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   0     1124    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       77    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0     1033    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       46    3217
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  0      420   17288
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg                  1        8   17288
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   0    15171   17288
6-24 months   JiVitA-3         BANGLADESH                     <52 kg                   1      506   17288
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               0     1144   17288
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg               1       39   17288
6-24 months   LCNI-5           MALAWI                         >=58 kg                  0      113     824
6-24 months   LCNI-5           MALAWI                         >=58 kg                  1        1     824
6-24 months   LCNI-5           MALAWI                         <52 kg                   0      492     824
6-24 months   LCNI-5           MALAWI                         <52 kg                   1        4     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg               0      211     824
6-24 months   LCNI-5           MALAWI                         [52-58) kg               1        3     824
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  0       44     240
6-24 months   MAL-ED           BANGLADESH                     >=58 kg                  1        0     240
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   0      150     240
6-24 months   MAL-ED           BANGLADESH                     <52 kg                   1        5     240
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               0       41     240
6-24 months   MAL-ED           BANGLADESH                     [52-58) kg               1        0     240
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  0      135     206
6-24 months   MAL-ED           BRAZIL                         >=58 kg                  1        0     206
6-24 months   MAL-ED           BRAZIL                         <52 kg                   0       37     206
6-24 months   MAL-ED           BRAZIL                         <52 kg                   1        0     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               0       33     206
6-24 months   MAL-ED           BRAZIL                         [52-58) kg               1        1     206
6-24 months   MAL-ED           INDIA                          >=58 kg                  0       40     234
6-24 months   MAL-ED           INDIA                          >=58 kg                  1        0     234
6-24 months   MAL-ED           INDIA                          <52 kg                   0      140     234
6-24 months   MAL-ED           INDIA                          <52 kg                   1        5     234
6-24 months   MAL-ED           INDIA                          [52-58) kg               0       48     234
6-24 months   MAL-ED           INDIA                          [52-58) kg               1        1     234
6-24 months   MAL-ED           NEPAL                          >=58 kg                  0       79     235
6-24 months   MAL-ED           NEPAL                          >=58 kg                  1        0     235
6-24 months   MAL-ED           NEPAL                          <52 kg                   0       73     235
6-24 months   MAL-ED           NEPAL                          <52 kg                   1        2     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg               0       81     235
6-24 months   MAL-ED           NEPAL                          [52-58) kg               1        0     235
6-24 months   MAL-ED           PERU                           >=58 kg                  0      100     269
6-24 months   MAL-ED           PERU                           >=58 kg                  1        0     269
6-24 months   MAL-ED           PERU                           <52 kg                   0      103     269
6-24 months   MAL-ED           PERU                           <52 kg                   1        2     269
6-24 months   MAL-ED           PERU                           [52-58) kg               0       63     269
6-24 months   MAL-ED           PERU                           [52-58) kg               1        1     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  0      177     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=58 kg                  1        5     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   0       29     254
6-24 months   MAL-ED           SOUTH AFRICA                   <52 kg                   1        1     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               0       38     254
6-24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg               1        4     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       89     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        3     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       57     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        1     245
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  0       70     542
6-24 months   NIH-Birth        BANGLADESH                     >=58 kg                  1        2     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   0      348     542
6-24 months   NIH-Birth        BANGLADESH                     <52 kg                   1       40     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               0       76     542
6-24 months   NIH-Birth        BANGLADESH                     [52-58) kg               1        6     542
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  0      187     730
6-24 months   NIH-Crypto       BANGLADESH                     >=58 kg                  1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   0      374     730
6-24 months   NIH-Crypto       BANGLADESH                     <52 kg                   1       17     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               0      149     730
6-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg               1        2     730
6-24 months   PROBIT           BELARUS                        >=58 kg                  0    10264   13764
6-24 months   PROBIT           BELARUS                        >=58 kg                  1        8   13764
6-24 months   PROBIT           BELARUS                        <52 kg                   0     1130   13764
6-24 months   PROBIT           BELARUS                        <52 kg                   1        1   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg               0     2360   13764
6-24 months   PROBIT           BELARUS                        [52-58) kg               1        1   13764
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  0      114     614
6-24 months   PROVIDE          BANGLADESH                     >=58 kg                  1        0     614
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   0      380     614
6-24 months   PROVIDE          BANGLADESH                     <52 kg                   1       12     614
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               0      107     614
6-24 months   PROVIDE          BANGLADESH                     [52-58) kg               1        1     614
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0      100    1382
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1        6    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      934    1382
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      119    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      215    1382
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1        8    1382
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1210    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      289    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       22    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      397    1978
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       15    1978
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4883    9744
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg                  1      138    9744
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   0     2021    9744
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg                   1      106    9744
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2504    9744
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg               1       92    9744


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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/3c919234-8467-4ea2-9f63-ec39556b8be4/919e2520-47fc-40bf-81e1-ee7fd8332ca3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3c919234-8467-4ea2-9f63-ec39556b8be4/919e2520-47fc-40bf-81e1-ee7fd8332ca3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3c919234-8467-4ea2-9f63-ec39556b8be4/919e2520-47fc-40bf-81e1-ee7fd8332ca3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3c919234-8467-4ea2-9f63-ec39556b8be4/919e2520-47fc-40bf-81e1-ee7fd8332ca3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0337524   0.0173676   0.0501371
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0637543   0.0449326   0.0825760
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0423896   0.0265751   0.0582041
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0413381   0.0267984   0.0558777
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0614279   0.0577043   0.0651514
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0641619   0.0516952   0.0766287
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0609756   0.0091427   0.1128086
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1718750   0.1369118   0.2068382
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1808511   0.1029803   0.2587218
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0364583   0.0099295   0.0629872
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1256158   0.0933571   0.1578744
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0509554   0.0165343   0.0853765
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0898741   0.0535375   0.1262107
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0853839   0.0461501   0.1246176
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0796192   0.0492902   0.1099482
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1429174   0.0475331   0.2383016
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1608284   0.1307957   0.1908611
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0830284   0.0472111   0.1188457
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0596577   0.0474964   0.0718191
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1029847   0.0718832   0.1340861
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0677212   0.0440391   0.0914033
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0855584   0.0783052   0.0928115
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1217809   0.1082680   0.1352938
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0952557   0.0843164   0.1061950
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0287190   0.0172118   0.0402263
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.0416963   0.0385220   0.0448705
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0427846   0.0325234   0.0530458
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0312500   0.0066227   0.0558773
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.0935961   0.0652454   0.1219467
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0382166   0.0082076   0.0682255
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0891046   0.0527813   0.1254278
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0876435   0.0485971   0.1266900
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0791386   0.0485135   0.1097638
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0619469   0.0123761   0.1115177
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.0702371   0.0468032   0.0936709
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0460251   0.0166561   0.0753941
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0304266   0.0216475   0.0392057
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0420894   0.0219161   0.0622628
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0349926   0.0184674   0.0515179
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0631135   0.0568067   0.0694204
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0801802   0.0689711   0.0913893
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0664754   0.0572313   0.0757195
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0331257   0.0171604   0.0490909
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0636421   0.0441963   0.0830878
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0421960   0.0265685   0.0578235
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0186916   0.0025656   0.0348176
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.0322766   0.0292544   0.0352988
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0329670   0.0217078   0.0442263
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.0566038   0.0190352   0.0941723
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1130104   0.0863447   0.1396762
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0358744   0.0032414   0.0685075
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0351946   0.0249921   0.0453971
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0827686   0.0486390   0.1168982
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0362491   0.0173333   0.0551650
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0270962   0.0225953   0.0315970
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0508829   0.0410019   0.0607638
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0350056   0.0278678   0.0421435


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610956   0.0576148   0.0645765
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0877868   0.0528398   0.1227338
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1475300   0.1183178   0.1767423
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0667517   0.0566626   0.0768408
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0953617   0.0899142   0.1008093
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0414120   0.0384288   0.0443951
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0870607   0.0521007   0.1220207
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0657277   0.0426068   0.0888486
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335884   0.0263056   0.0408712
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0675481   0.0628829   0.0722134
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319875   0.0290997   0.0348754
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0962373   0.0722060   0.1202687
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414560   0.0326689   0.0502431
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344828   0.0308596   0.0381059


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.8888843   1.1078637   3.2205083
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2559003   0.7612674   2.0719204
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.4859874   1.0358710   2.1316927
0-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.5521260   1.0276593   2.3442548
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.8187500   1.1761332   6.7554864
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           2.9659574   1.1437460   7.6913089
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           3.4454609   1.5926859   7.4535732
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3976342   0.5178396   3.7721749
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           0.9500388   0.7261923   1.2428853
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.8858971   0.7510353   1.0449757
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.1253245   0.6248814   2.0265530
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.5809539   0.3504499   0.9630689
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7262585   1.1988724   2.4856428
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1351617   0.7572054   1.7017736
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.4233660   1.2377769   1.6367818
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1133418   0.9651827   1.2842438
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.4518699   0.9651048   2.1841424
0-6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.4897669   0.9231997   2.4040360
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.9950739   1.2874825   6.9674482
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.2229299   0.4020223   3.7200860
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           0.9836029   0.7599528   1.2730721
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.8881546   0.7500700   1.0516599
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.1338267   0.6789947   1.8933327
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.7429767   0.2925146   1.8871342
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3833127   0.7905615   2.4205000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1500687   0.6612427   2.0002611
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2704121   1.0698017   1.5086413
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0532679   0.8874848   1.2500194
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9212326   1.1209578   3.2928399
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2738160   0.7777665   2.0862395
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.7267972   0.7211387   4.1348890
6-24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.7637363   0.6919969   4.4953461
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.9965179   1.0255200   3.8868901
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.6337818   0.3023311   1.3286072
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.3517380   1.4207462   3.8927935
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0299612   0.5670100   1.8709020
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8778619   1.4544637   2.4245125
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2919036   0.9931102   1.6805937


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0141183    0.0015514   0.0266852
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0197576    0.0049197   0.0345954
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0976782    0.0447291   0.1506274
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0509589    0.0235314   0.0783864
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0020873   -0.0055767   0.0014022
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0046127   -0.0727406   0.0819660
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0070940   -0.0010563   0.0152443
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0098034    0.0044512   0.0151555
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0126929    0.0010543   0.0243316
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0349752    0.0102146   0.0597358
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0020439   -0.0055666   0.0014789
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0037808   -0.0266346   0.0341961
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0031619   -0.0026223   0.0089461
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0044346   -0.0001308   0.0090000
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0147450    0.0025323   0.0269578
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0132959   -0.0028644   0.0294562
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0396336    0.0041026   0.0751645
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0062614   -0.0007376   0.0132604
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0073866    0.0038369   0.0109363


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.2949264   -0.0265285   0.5157185
0-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.3233874    0.0355687   0.5253113
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.6156689    0.1221060   0.8317446
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5829388    0.1719680   0.7899356
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0237768   -0.0619067   0.0129840
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0312660   -0.6698026   0.4379902
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1062740   -0.0234907   0.2195863
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1028020    0.0451708   0.1569547
0-6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.3065044   -0.0356221   0.5356065
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5281250    0.0134939   0.7742883
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0234764   -0.0624574   0.0140744
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0575221   -0.5639304   0.4320306
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0941358   -0.0942285   0.2500744
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0656510   -0.0042800   0.1307125
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3080180   -0.0030087   0.5225973
6-24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.4156597   -0.3815110   0.7528405
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4118315   -0.0801834   0.6797375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1510368   -0.0324119   0.3018885
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2142110    0.1069012   0.3086270
