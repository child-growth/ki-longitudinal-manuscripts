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

unadjusted

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
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       98    1497
0-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1       11    1497
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      961    1497
0-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      191    1497
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      217    1497
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1       19    1497
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
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  0      103    1490
0-6 months    SAS-CompFeed     INDIA                          >=58 kg                  1        6    1490
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   0     1067    1490
0-6 months    SAS-CompFeed     INDIA                          <52 kg                   1       79    1490
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               0      222    1490
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg               1       13    1490
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
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  0       97    1381
6-24 months   SAS-CompFeed     INDIA                          >=58 kg                  1        5    1381
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   0      938    1381
6-24 months   SAS-CompFeed     INDIA                          <52 kg                   1      122    1381
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               0      213    1381
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg               1        6    1381
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/7f4b36bc-c288-4ebe-aa7d-ba2e2335fe91/c2e3f353-53e4-456d-bd52-d489ea10f3c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7f4b36bc-c288-4ebe-aa7d-ba2e2335fe91/c2e3f353-53e4-456d-bd52-d489ea10f3c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7f4b36bc-c288-4ebe-aa7d-ba2e2335fe91/c2e3f353-53e4-456d-bd52-d489ea10f3c1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7f4b36bc-c288-4ebe-aa7d-ba2e2335fe91/c2e3f353-53e4-456d-bd52-d489ea10f3c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0330843   0.0169986   0.0491700
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0641132   0.0454946   0.0827319
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0426321   0.0270024   0.0582617
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0609756   0.0091427   0.1128086
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.1718750   0.1369118   0.2068382
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1808511   0.1029803   0.2587218
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0364583   0.0099295   0.0629872
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1256158   0.0933571   0.1578744
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0509554   0.0165343   0.0853765
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0896974   0.0533235   0.1260714
0-24 months   PROBIT           BELARUS                        <52 kg               NA                0.0831123   0.0427146   0.1235100
0-24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0817104   0.0505324   0.1128884
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.1009174   0.0234144   0.1784205
0-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1657986   0.1341743   0.1974229
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0805085   0.0545514   0.1064656
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0596206   0.0475384   0.0717028
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0941476   0.0652689   0.1230263
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0662526   0.0440664   0.0884388
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0851941   0.0780227   0.0923654
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1204669   0.1074408   0.1334929
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0950119   0.0844245   0.1055992
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0312500   0.0066227   0.0558773
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.0935961   0.0652454   0.1219467
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0382166   0.0082076   0.0682255
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0889192   0.0525523   0.1252860
0-6 months    PROBIT           BELARUS                        <52 kg               NA                0.0822281   0.0417407   0.1227156
0-6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0812870   0.0500921   0.1124820
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0550459   0.0107599   0.0993318
0-6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.0689354   0.0433827   0.0944882
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0553191   0.0343529   0.0762854
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0304878   0.0217150   0.0392606
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0432570   0.0231397   0.0633743
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0351967   0.0187591   0.0516342
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0627370   0.0564972   0.0689768
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0810584   0.0700953   0.0920214
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0660988   0.0571098   0.0750878
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0330843   0.0169986   0.0491700
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0641132   0.0454946   0.0827319
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0426321   0.0270024   0.0582617
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                0.0490196   0.0111658   0.0868735
6-24 months   SAS-CompFeed     INDIA                          <52 kg               NA                0.1150943   0.0870550   0.1431337
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0273973   0.0057214   0.0490731
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0358566   0.0255671   0.0461460
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0707395   0.0422374   0.0992417
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0364078   0.0183172   0.0544984
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0274846   0.0229622   0.0320070
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0498354   0.0405873   0.0590836
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0354391   0.0283266   0.0425517


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0877868   0.0528398   0.1227338
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1476286   0.1184599   0.1767973
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0667517   0.0566626   0.0768408
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0953617   0.0899142   0.1008093
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0870607   0.0521007   0.1220207
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0657718   0.0426648   0.0888788
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335884   0.0263056   0.0408712
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0675481   0.0628829   0.0722134
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0478707   0.0359037   0.0598376
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0963070   0.0722853   0.1203288
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414560   0.0326689   0.0502431
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0344828   0.0308596   0.0381059


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9378744   1.1413669   3.290228
0-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2885886   0.7760279   2.139692
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.8187500   1.1761332   6.755486
0-24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           2.9659574   1.1437460   7.691309
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           3.4454609   1.5926859   7.453573
0-24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3976342   0.5178396   3.772175
0-24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           0.9265848   0.7008582   1.225012
0-24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9109559   0.7797067   1.064299
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.6429135   0.8072585   3.343619
0-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.7977658   0.3962058   1.606312
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5791117   1.0933282   2.280737
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1112366   0.7513046   1.643603
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.4140284   1.2329514   1.621699
0-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1152402   0.9698804   1.282386
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.9950739   1.2874825   6.967448
0-6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.2229299   0.4020223   3.720086
0-6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           0.9247514   0.6984485   1.224378
0-6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           0.9141680   0.7816080   1.069210
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.2523269   0.6960862   2.253058
0-6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.0049645   0.4012309   2.517139
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4188295   0.8211469   2.451543
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1544513   0.6670277   1.998055
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2920349   1.0923553   1.528215
0-6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0535859   0.8902231   1.246927
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9378744   1.1413669   3.290228
6-24 months   iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.2885886   0.7760279   2.139692
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.3479245   1.0137636   5.437904
6-24 months   SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.5589041   0.2872384   1.087507
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.9728474   1.2029996   3.235352
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0153722   0.5720418   1.802282
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8132159   1.4149381   2.323601
6-24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2894196   0.9946805   1.671495


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0147864    0.0024543   0.0271184
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0976782    0.0447291   0.1506274
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0509589    0.0235314   0.0783864
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0019106   -0.0053134   0.0014921
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0467112   -0.0186318   0.1120542
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0071311   -0.0009032   0.0151654
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0101677    0.0049251   0.0154102
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0349752    0.0102146   0.0597358
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0018585   -0.0052447   0.0015278
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0107259   -0.0202489   0.0417008
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0031006   -0.0026792   0.0088804
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0048111    0.0003320   0.0092903
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0147864    0.0024543   0.0271184
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0472874    0.0038433   0.0907315
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0055994   -0.0013818   0.0125807
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0069982    0.0034624   0.0105339


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3088816   -0.0062239   0.5253098
0-24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.6156689    0.1221060   0.8317446
0-24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5829388    0.1719680   0.7899356
0-24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0217644   -0.0587899   0.0139663
0-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.3164100   -0.3421106   0.6518206
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1068303   -0.0209323   0.2186043
0-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1066220    0.0502118   0.1596818
0-6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.5281250    0.0134939   0.7742883
0-6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0213466   -0.0585598   0.0145583
0-6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.1630781   -0.5077606   0.5354446
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0923124   -0.0958350   0.2481562
0-6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0712253    0.0026605   0.1350763
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3088816   -0.0062239   0.5253098
6-24 months   SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4910069   -0.1275242   0.7702276
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1350695   -0.0480923   0.2862224
6-24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2029476    0.0959230   0.2973026
