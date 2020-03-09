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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mage       ever_swasted   n_cell       n
------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0      222     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1       74     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   0       27     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   1        7     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0       32     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1       11     373
0-24 months   COHORTS          GUATEMALA                      [20-30)               0      608    1341
0-24 months   COHORTS          GUATEMALA                      [20-30)               1       47    1341
0-24 months   COHORTS          GUATEMALA                      <20                   0      180    1341
0-24 months   COHORTS          GUATEMALA                      <20                   1       16    1341
0-24 months   COHORTS          GUATEMALA                      >=30                  0      456    1341
0-24 months   COHORTS          GUATEMALA                      >=30                  1       34    1341
0-24 months   COHORTS          INDIA                          [20-30)               0     3245    5305
0-24 months   COHORTS          INDIA                          [20-30)               1      352    5305
0-24 months   COHORTS          INDIA                          <20                   0      384    5305
0-24 months   COHORTS          INDIA                          <20                   1       42    5305
0-24 months   COHORTS          INDIA                          >=30                  0     1129    5305
0-24 months   COHORTS          INDIA                          >=30                  1      153    5305
0-24 months   COHORTS          PHILIPPINES                    [20-30)               0     1596    3045
0-24 months   COHORTS          PHILIPPINES                    [20-30)               1      224    3045
0-24 months   COHORTS          PHILIPPINES                    <20                   0      326    3045
0-24 months   COHORTS          PHILIPPINES                    <20                   1       51    3045
0-24 months   COHORTS          PHILIPPINES                    >=30                  0      741    3045
0-24 months   COHORTS          PHILIPPINES                    >=30                  1      107    3045
0-24 months   EE               PAKISTAN                       [20-30)               0      134     377
0-24 months   EE               PAKISTAN                       [20-30)               1       28     377
0-24 months   EE               PAKISTAN                       <20                   0        1     377
0-24 months   EE               PAKISTAN                       <20                   1        0     377
0-24 months   EE               PAKISTAN                       >=30                  0      163     377
0-24 months   EE               PAKISTAN                       >=30                  1       51     377
0-24 months   GMS-Nepal        NEPAL                          [20-30)               0      339     686
0-24 months   GMS-Nepal        NEPAL                          [20-30)               1      105     686
0-24 months   GMS-Nepal        NEPAL                          <20                   0      104     686
0-24 months   GMS-Nepal        NEPAL                          <20                   1       37     686
0-24 months   GMS-Nepal        NEPAL                          >=30                  0       66     686
0-24 months   GMS-Nepal        NEPAL                          >=30                  1       35     686
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0      174     281
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1        1     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                   0       47     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                   1        0     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       57     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  1        2     281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179
0-24 months   IRC              INDIA                          [20-30)               0      226     410
0-24 months   IRC              INDIA                          [20-30)               1      118     410
0-24 months   IRC              INDIA                          <20                   0       27     410
0-24 months   IRC              INDIA                          <20                   1       10     410
0-24 months   IRC              INDIA                          >=30                  0       17     410
0-24 months   IRC              INDIA                          >=30                  1       12     410
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               0    11861   26945
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               1      729   26945
0-24 months   JiVitA-3         BANGLADESH                     <20                   0    11311   26945
0-24 months   JiVitA-3         BANGLADESH                     <20                   1      740   26945
0-24 months   JiVitA-3         BANGLADESH                     >=30                  0     2129   26945
0-24 months   JiVitA-3         BANGLADESH                     >=30                  1      175   26945
0-24 months   Keneba           GAMBIA                         [20-30)               0     1193    2864
0-24 months   Keneba           GAMBIA                         [20-30)               1      250    2864
0-24 months   Keneba           GAMBIA                         <20                   0      337    2864
0-24 months   Keneba           GAMBIA                         <20                   1       57    2864
0-24 months   Keneba           GAMBIA                         >=30                  0      812    2864
0-24 months   Keneba           GAMBIA                         >=30                  1      215    2864
0-24 months   LCNI-5           MALAWI                         [20-30)               0      362     670
0-24 months   LCNI-5           MALAWI                         [20-30)               1        2     670
0-24 months   LCNI-5           MALAWI                         <20                   0      104     670
0-24 months   LCNI-5           MALAWI                         <20                   1        4     670
0-24 months   LCNI-5           MALAWI                         >=30                  0      196     670
0-24 months   LCNI-5           MALAWI                         >=30                  1        2     670
0-24 months   MAL-ED           BANGLADESH                     [20-30)               0      167     263
0-24 months   MAL-ED           BANGLADESH                     [20-30)               1       13     263
0-24 months   MAL-ED           BANGLADESH                     <20                   0       32     263
0-24 months   MAL-ED           BANGLADESH                     <20                   1        5     263
0-24 months   MAL-ED           BANGLADESH                     >=30                  0       43     263
0-24 months   MAL-ED           BANGLADESH                     >=30                  1        3     263
0-24 months   MAL-ED           BRAZIL                         [20-30)               0      138     233
0-24 months   MAL-ED           BRAZIL                         [20-30)               1        1     233
0-24 months   MAL-ED           BRAZIL                         <20                   0       41     233
0-24 months   MAL-ED           BRAZIL                         <20                   1        2     233
0-24 months   MAL-ED           BRAZIL                         >=30                  0       50     233
0-24 months   MAL-ED           BRAZIL                         >=30                  1        1     233
0-24 months   MAL-ED           INDIA                          [20-30)               0      172     249
0-24 months   MAL-ED           INDIA                          [20-30)               1       22     249
0-24 months   MAL-ED           INDIA                          <20                   0       31     249
0-24 months   MAL-ED           INDIA                          <20                   1        3     249
0-24 months   MAL-ED           INDIA                          >=30                  0       20     249
0-24 months   MAL-ED           INDIA                          >=30                  1        1     249
0-24 months   MAL-ED           NEPAL                          [20-30)               0      180     240
0-24 months   MAL-ED           NEPAL                          [20-30)               1        9     240
0-24 months   MAL-ED           NEPAL                          <20                   0        5     240
0-24 months   MAL-ED           NEPAL                          <20                   1        0     240
0-24 months   MAL-ED           NEPAL                          >=30                  0       46     240
0-24 months   MAL-ED           NEPAL                          >=30                  1        0     240
0-24 months   MAL-ED           PERU                           [20-30)               0      150     302
0-24 months   MAL-ED           PERU                           [20-30)               1        3     302
0-24 months   MAL-ED           PERU                           <20                   0       81     302
0-24 months   MAL-ED           PERU                           <20                   1        1     302
0-24 months   MAL-ED           PERU                           >=30                  0       67     302
0-24 months   MAL-ED           PERU                           >=30                  1        0     302
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0      151     312
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1        8     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       44     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   1        4     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0      101     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1        4     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0      135     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0       14     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        2     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               0      349     622
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               1       68     622
0-24 months   NIH-Birth        BANGLADESH                     <20                   0       66     622
0-24 months   NIH-Birth        BANGLADESH                     <20                   1        7     622
0-24 months   NIH-Birth        BANGLADESH                     >=30                  0      108     622
0-24 months   NIH-Birth        BANGLADESH                     >=30                  1       24     622
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      455     758
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1       39     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                   0      122     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                   1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  0      115     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  1       13     758
0-24 months   PROBIT           BELARUS                        [20-30)               0    11141   16898
0-24 months   PROBIT           BELARUS                        [20-30)               1      989   16898
0-24 months   PROBIT           BELARUS                        <20                   0     1621   16898
0-24 months   PROBIT           BELARUS                        <20                   1      124   16898
0-24 months   PROBIT           BELARUS                        >=30                  0     2811   16898
0-24 months   PROBIT           BELARUS                        >=30                  1      212   16898
0-24 months   PROVIDE          BANGLADESH                     [20-30)               0      464     700
0-24 months   PROVIDE          BANGLADESH                     [20-30)               1       29     700
0-24 months   PROVIDE          BANGLADESH                     <20                   0       83     700
0-24 months   PROVIDE          BANGLADESH                     <20                   1        2     700
0-24 months   PROVIDE          BANGLADESH                     >=30                  0      111     700
0-24 months   PROVIDE          BANGLADESH                     >=30                  1       11     700
0-24 months   SAS-CompFeed     INDIA                          [20-30)               0      979    1513
0-24 months   SAS-CompFeed     INDIA                          [20-30)               1      173    1513
0-24 months   SAS-CompFeed     INDIA                          <20                   0      173    1513
0-24 months   SAS-CompFeed     INDIA                          <20                   1       19    1513
0-24 months   SAS-CompFeed     INDIA                          >=30                  0      138    1513
0-24 months   SAS-CompFeed     INDIA                          >=30                  1       31    1513
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0      247     418
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1       43     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                   0       33     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                   1        3     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       67     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       25     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1472    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       99    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      154    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       13    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      593    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       45    2376
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     8480   13908
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1      871   13908
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   0     2018   13908
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   1      200   13908
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     2131   13908
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1      208   13908
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               0      238     368
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               1       54     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   0       29     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   1        5     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  0       34     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  1        8     368
0-6 months    COHORTS          GUATEMALA                      [20-30)               0      493    1063
0-6 months    COHORTS          GUATEMALA                      [20-30)               1       31    1063
0-6 months    COHORTS          GUATEMALA                      <20                   0      126    1063
0-6 months    COHORTS          GUATEMALA                      <20                   1       11    1063
0-6 months    COHORTS          GUATEMALA                      >=30                  0      377    1063
0-6 months    COHORTS          GUATEMALA                      >=30                  1       25    1063
0-6 months    COHORTS          INDIA                          [20-30)               0     3223    5102
0-6 months    COHORTS          INDIA                          [20-30)               1      239    5102
0-6 months    COHORTS          INDIA                          <20                   0      370    5102
0-6 months    COHORTS          INDIA                          <20                   1       30    5102
0-6 months    COHORTS          INDIA                          >=30                  0     1145    5102
0-6 months    COHORTS          INDIA                          >=30                  1       95    5102
0-6 months    COHORTS          PHILIPPINES                    [20-30)               0     1690    3044
0-6 months    COHORTS          PHILIPPINES                    [20-30)               1      129    3044
0-6 months    COHORTS          PHILIPPINES                    <20                   0      349    3044
0-6 months    COHORTS          PHILIPPINES                    <20                   1       28    3044
0-6 months    COHORTS          PHILIPPINES                    >=30                  0      794    3044
0-6 months    COHORTS          PHILIPPINES                    >=30                  1       54    3044
0-6 months    EE               PAKISTAN                       [20-30)               0      153     377
0-6 months    EE               PAKISTAN                       [20-30)               1        9     377
0-6 months    EE               PAKISTAN                       <20                   0        1     377
0-6 months    EE               PAKISTAN                       <20                   1        0     377
0-6 months    EE               PAKISTAN                       >=30                  0      187     377
0-6 months    EE               PAKISTAN                       >=30                  1       27     377
0-6 months    GMS-Nepal        NEPAL                          [20-30)               0      395     686
0-6 months    GMS-Nepal        NEPAL                          [20-30)               1       49     686
0-6 months    GMS-Nepal        NEPAL                          <20                   0      124     686
0-6 months    GMS-Nepal        NEPAL                          <20                   1       17     686
0-6 months    GMS-Nepal        NEPAL                          >=30                  0       88     686
0-6 months    GMS-Nepal        NEPAL                          >=30                  1       13     686
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               0      164     264
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               1        0     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                   0       46     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                   1        0     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  0       53     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  1        1     264
0-6 months    IRC              INDIA                          [20-30)               0      238     410
0-6 months    IRC              INDIA                          [20-30)               1      106     410
0-6 months    IRC              INDIA                          <20                   0       28     410
0-6 months    IRC              INDIA                          <20                   1        9     410
0-6 months    IRC              INDIA                          >=30                  0       18     410
0-6 months    IRC              INDIA                          >=30                  1       11     410
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               0    12046   26848
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               1      507   26848
0-6 months    JiVitA-3         BANGLADESH                     <20                   0    11527   26848
0-6 months    JiVitA-3         BANGLADESH                     <20                   1      469   26848
0-6 months    JiVitA-3         BANGLADESH                     >=30                  0     2164   26848
0-6 months    JiVitA-3         BANGLADESH                     >=30                  1      135   26848
0-6 months    Keneba           GAMBIA                         [20-30)               0     1068    2444
0-6 months    Keneba           GAMBIA                         [20-30)               1      106    2444
0-6 months    Keneba           GAMBIA                         <20                   0      328    2444
0-6 months    Keneba           GAMBIA                         <20                   1       30    2444
0-6 months    Keneba           GAMBIA                         >=30                  0      817    2444
0-6 months    Keneba           GAMBIA                         >=30                  1       95    2444
0-6 months    LCNI-5           MALAWI                         [20-30)               0      116     220
0-6 months    LCNI-5           MALAWI                         [20-30)               1        0     220
0-6 months    LCNI-5           MALAWI                         <20                   0       39     220
0-6 months    LCNI-5           MALAWI                         <20                   1        0     220
0-6 months    LCNI-5           MALAWI                         >=30                  0       65     220
0-6 months    LCNI-5           MALAWI                         >=30                  1        0     220
0-6 months    MAL-ED           BANGLADESH                     [20-30)               0      169     263
0-6 months    MAL-ED           BANGLADESH                     [20-30)               1       11     263
0-6 months    MAL-ED           BANGLADESH                     <20                   0       34     263
0-6 months    MAL-ED           BANGLADESH                     <20                   1        3     263
0-6 months    MAL-ED           BANGLADESH                     >=30                  0       44     263
0-6 months    MAL-ED           BANGLADESH                     >=30                  1        2     263
0-6 months    MAL-ED           BRAZIL                         [20-30)               0      138     233
0-6 months    MAL-ED           BRAZIL                         [20-30)               1        1     233
0-6 months    MAL-ED           BRAZIL                         <20                   0       42     233
0-6 months    MAL-ED           BRAZIL                         <20                   1        1     233
0-6 months    MAL-ED           BRAZIL                         >=30                  0       50     233
0-6 months    MAL-ED           BRAZIL                         >=30                  1        1     233
0-6 months    MAL-ED           INDIA                          [20-30)               0      177     249
0-6 months    MAL-ED           INDIA                          [20-30)               1       17     249
0-6 months    MAL-ED           INDIA                          <20                   0       31     249
0-6 months    MAL-ED           INDIA                          <20                   1        3     249
0-6 months    MAL-ED           INDIA                          >=30                  0       20     249
0-6 months    MAL-ED           INDIA                          >=30                  1        1     249
0-6 months    MAL-ED           NEPAL                          [20-30)               0      182     240
0-6 months    MAL-ED           NEPAL                          [20-30)               1        7     240
0-6 months    MAL-ED           NEPAL                          <20                   0        5     240
0-6 months    MAL-ED           NEPAL                          <20                   1        0     240
0-6 months    MAL-ED           NEPAL                          >=30                  0       46     240
0-6 months    MAL-ED           NEPAL                          >=30                  1        0     240
0-6 months    MAL-ED           PERU                           [20-30)               0      152     302
0-6 months    MAL-ED           PERU                           [20-30)               1        1     302
0-6 months    MAL-ED           PERU                           <20                   0       82     302
0-6 months    MAL-ED           PERU                           <20                   1        0     302
0-6 months    MAL-ED           PERU                           >=30                  0       67     302
0-6 months    MAL-ED           PERU                           >=30                  1        0     302
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               0      158     312
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   0       45     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  0      103     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  1        2     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0      139     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0       15     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1        3     261
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               0      379     620
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               1       37     620
0-6 months    NIH-Birth        BANGLADESH                     <20                   0       66     620
0-6 months    NIH-Birth        BANGLADESH                     <20                   1        6     620
0-6 months    NIH-Birth        BANGLADESH                     >=30                  0      119     620
0-6 months    NIH-Birth        BANGLADESH                     >=30                  1       13     620
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               0      465     758
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               1       29     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                   0      125     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                   1       11     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  0      118     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  1       10     758
0-6 months    PROBIT           BELARUS                        [20-30)               0    11149   16895
0-6 months    PROBIT           BELARUS                        [20-30)               1      980   16895
0-6 months    PROBIT           BELARUS                        <20                   0     1620   16895
0-6 months    PROBIT           BELARUS                        <20                   1      124   16895
0-6 months    PROBIT           BELARUS                        >=30                  0     2813   16895
0-6 months    PROBIT           BELARUS                        >=30                  1      209   16895
0-6 months    PROVIDE          BANGLADESH                     [20-30)               0      472     700
0-6 months    PROVIDE          BANGLADESH                     [20-30)               1       21     700
0-6 months    PROVIDE          BANGLADESH                     <20                   0       83     700
0-6 months    PROVIDE          BANGLADESH                     <20                   1        2     700
0-6 months    PROVIDE          BANGLADESH                     >=30                  0      116     700
0-6 months    PROVIDE          BANGLADESH                     >=30                  1        6     700
0-6 months    SAS-CompFeed     INDIA                          [20-30)               0     1071    1505
0-6 months    SAS-CompFeed     INDIA                          [20-30)               1       75    1505
0-6 months    SAS-CompFeed     INDIA                          <20                   0      182    1505
0-6 months    SAS-CompFeed     INDIA                          <20                   1        9    1505
0-6 months    SAS-CompFeed     INDIA                          >=30                  0      152    1505
0-6 months    SAS-CompFeed     INDIA                          >=30                  1       16    1505
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               0      280     418
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               1       10     418
0-6 months    SAS-FoodSuppl    INDIA                          <20                   0       36     418
0-6 months    SAS-FoodSuppl    INDIA                          <20                   1        0     418
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  0       82     418
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  1       10     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1518    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       53    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      159    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        8    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      621    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       17    2376
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               0     8653   13815
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               1      644   13815
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   0     2040   13815
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   1      158   13815
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  0     2175   13815
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  1      145   13815
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0      272     373
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1       24     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   0       32     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0       39     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1        4     373
6-24 months   COHORTS          GUATEMALA                      [20-30)               0      575    1213
6-24 months   COHORTS          GUATEMALA                      [20-30)               1       16    1213
6-24 months   COHORTS          GUATEMALA                      <20                   0      167    1213
6-24 months   COHORTS          GUATEMALA                      <20                   1        5    1213
6-24 months   COHORTS          GUATEMALA                      >=30                  0      441    1213
6-24 months   COHORTS          GUATEMALA                      >=30                  1        9    1213
6-24 months   COHORTS          INDIA                          [20-30)               0     3250    4957
6-24 months   COHORTS          INDIA                          [20-30)               1      115    4957
6-24 months   COHORTS          INDIA                          <20                   0      363    4957
6-24 months   COHORTS          INDIA                          <20                   1       14    4957
6-24 months   COHORTS          INDIA                          >=30                  0     1155    4957
6-24 months   COHORTS          INDIA                          >=30                  1       60    4957
6-24 months   COHORTS          PHILIPPINES                    [20-30)               0     1567    2809
6-24 months   COHORTS          PHILIPPINES                    [20-30)               1      106    2809
6-24 months   COHORTS          PHILIPPINES                    <20                   0      322    2809
6-24 months   COHORTS          PHILIPPINES                    <20                   1       24    2809
6-24 months   COHORTS          PHILIPPINES                    >=30                  0      732    2809
6-24 months   COHORTS          PHILIPPINES                    >=30                  1       58    2809
6-24 months   EE               PAKISTAN                       [20-30)               0      139     371
6-24 months   EE               PAKISTAN                       [20-30)               1       21     371
6-24 months   EE               PAKISTAN                       <20                   0        1     371
6-24 months   EE               PAKISTAN                       <20                   1        0     371
6-24 months   EE               PAKISTAN                       >=30                  0      181     371
6-24 months   EE               PAKISTAN                       >=30                  1       29     371
6-24 months   GMS-Nepal        NEPAL                          [20-30)               0      316     590
6-24 months   GMS-Nepal        NEPAL                          [20-30)               1       66     590
6-24 months   GMS-Nepal        NEPAL                          <20                   0       96     590
6-24 months   GMS-Nepal        NEPAL                          <20                   1       23     590
6-24 months   GMS-Nepal        NEPAL                          >=30                  0       66     590
6-24 months   GMS-Nepal        NEPAL                          >=30                  1       23     590
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0      165     265
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1        1     265
6-24 months   Guatemala BSC    GUATEMALA                      <20                   0       42     265
6-24 months   Guatemala BSC    GUATEMALA                      <20                   1        0     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       56     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  1        1     265
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1665    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1       78    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      382    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1       21    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      982    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1       51    3179
6-24 months   IRC              INDIA                          [20-30)               0      323     410
6-24 months   IRC              INDIA                          [20-30)               1       21     410
6-24 months   IRC              INDIA                          <20                   0       35     410
6-24 months   IRC              INDIA                          <20                   1        2     410
6-24 months   IRC              INDIA                          >=30                  0       26     410
6-24 months   IRC              INDIA                          >=30                  1        3     410
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               0     7627   17292
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               1      230   17292
6-24 months   JiVitA-3         BANGLADESH                     <20                   0     7904   17292
6-24 months   JiVitA-3         BANGLADESH                     <20                   1      279   17292
6-24 months   JiVitA-3         BANGLADESH                     >=30                  0     1209   17292
6-24 months   JiVitA-3         BANGLADESH                     >=30                  1       43   17292
6-24 months   Keneba           GAMBIA                         [20-30)               0     1188    2689
6-24 months   Keneba           GAMBIA                         [20-30)               1      151    2689
6-24 months   Keneba           GAMBIA                         <20                   0      333    2689
6-24 months   Keneba           GAMBIA                         <20                   1       31    2689
6-24 months   Keneba           GAMBIA                         >=30                  0      851    2689
6-24 months   Keneba           GAMBIA                         >=30                  1      135    2689
6-24 months   LCNI-5           MALAWI                         [20-30)               0      355     659
6-24 months   LCNI-5           MALAWI                         [20-30)               1        2     659
6-24 months   LCNI-5           MALAWI                         <20                   0      102     659
6-24 months   LCNI-5           MALAWI                         <20                   1        4     659
6-24 months   LCNI-5           MALAWI                         >=30                  0      194     659
6-24 months   LCNI-5           MALAWI                         >=30                  1        2     659
6-24 months   MAL-ED           BANGLADESH                     [20-30)               0      161     240
6-24 months   MAL-ED           BANGLADESH                     [20-30)               1        2     240
6-24 months   MAL-ED           BANGLADESH                     <20                   0       33     240
6-24 months   MAL-ED           BANGLADESH                     <20                   1        2     240
6-24 months   MAL-ED           BANGLADESH                     >=30                  0       41     240
6-24 months   MAL-ED           BANGLADESH                     >=30                  1        1     240
6-24 months   MAL-ED           BRAZIL                         [20-30)               0      124     207
6-24 months   MAL-ED           BRAZIL                         [20-30)               1        0     207
6-24 months   MAL-ED           BRAZIL                         <20                   0       35     207
6-24 months   MAL-ED           BRAZIL                         <20                   1        1     207
6-24 months   MAL-ED           BRAZIL                         >=30                  0       47     207
6-24 months   MAL-ED           BRAZIL                         >=30                  1        0     207
6-24 months   MAL-ED           INDIA                          [20-30)               0      172     233
6-24 months   MAL-ED           INDIA                          [20-30)               1        6     233
6-24 months   MAL-ED           INDIA                          <20                   0       34     233
6-24 months   MAL-ED           INDIA                          <20                   1        0     233
6-24 months   MAL-ED           INDIA                          >=30                  0       21     233
6-24 months   MAL-ED           INDIA                          >=30                  1        0     233
6-24 months   MAL-ED           NEPAL                          [20-30)               0      182     235
6-24 months   MAL-ED           NEPAL                          [20-30)               1        2     235
6-24 months   MAL-ED           NEPAL                          <20                   0        5     235
6-24 months   MAL-ED           NEPAL                          <20                   1        0     235
6-24 months   MAL-ED           NEPAL                          >=30                  0       46     235
6-24 months   MAL-ED           NEPAL                          >=30                  1        0     235
6-24 months   MAL-ED           PERU                           [20-30)               0      132     270
6-24 months   MAL-ED           PERU                           [20-30)               1        2     270
6-24 months   MAL-ED           PERU                           <20                   0       74     270
6-24 months   MAL-ED           PERU                           <20                   1        1     270
6-24 months   MAL-ED           PERU                           >=30                  0       61     270
6-24 months   MAL-ED           PERU                           >=30                  1        0     270
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0      115     259
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1        7     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       41     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   1        1     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0       93     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1        2     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0      124     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0       13     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0      103     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1        0     245
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               0      325     540
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               1       35     540
6-24 months   NIH-Birth        BANGLADESH                     <20                   0       60     540
6-24 months   NIH-Birth        BANGLADESH                     <20                   1        1     540
6-24 months   NIH-Birth        BANGLADESH                     >=30                  0      107     540
6-24 months   NIH-Birth        BANGLADESH                     >=30                  1       12     540
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      463     730
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1       11     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                   0      129     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                   1        4     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  0      118     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  1        5     730
6-24 months   PROBIT           BELARUS                        [20-30)               0    11885   16598
6-24 months   PROBIT           BELARUS                        [20-30)               1        9   16598
6-24 months   PROBIT           BELARUS                        <20                   0     1715   16598
6-24 months   PROBIT           BELARUS                        <20                   1        0   16598
6-24 months   PROBIT           BELARUS                        >=30                  0     2986   16598
6-24 months   PROBIT           BELARUS                        >=30                  1        3   16598
6-24 months   PROVIDE          BANGLADESH                     [20-30)               0      427     615
6-24 months   PROVIDE          BANGLADESH                     [20-30)               1        8     615
6-24 months   PROVIDE          BANGLADESH                     <20                   0       68     615
6-24 months   PROVIDE          BANGLADESH                     <20                   1        0     615
6-24 months   PROVIDE          BANGLADESH                     >=30                  0      107     615
6-24 months   PROVIDE          BANGLADESH                     >=30                  1        5     615
6-24 months   SAS-CompFeed     INDIA                          [20-30)               0      951    1389
6-24 months   SAS-CompFeed     INDIA                          [20-30)               1      106    1389
6-24 months   SAS-CompFeed     INDIA                          <20                   0      172    1389
6-24 months   SAS-CompFeed     INDIA                          <20                   1       10    1389
6-24 months   SAS-CompFeed     INDIA                          >=30                  0      132    1389
6-24 months   SAS-CompFeed     INDIA                          >=30                  1       18    1389
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0      246     402
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1       33     402
6-24 months   SAS-FoodSuppl    INDIA                          <20                   0       33     402
6-24 months   SAS-FoodSuppl    INDIA                          <20                   1        3     402
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       72     402
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       15     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1259    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1       48    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      135    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1        6    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      526    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       29    2003
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     6948   10789
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1      246   10789
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   0     1661   10789
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   1       42   10789
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     1825   10789
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1       67   10789


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/f0d47ffe-659c-4f80-a3cc-aaf120b0b04a/5629e9cf-ef8d-49aa-93fb-a9d0e2e66fca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f0d47ffe-659c-4f80-a3cc-aaf120b0b04a/5629e9cf-ef8d-49aa-93fb-a9d0e2e66fca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f0d47ffe-659c-4f80-a3cc-aaf120b0b04a/5629e9cf-ef8d-49aa-93fb-a9d0e2e66fca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f0d47ffe-659c-4f80-a3cc-aaf120b0b04a/5629e9cf-ef8d-49aa-93fb-a9d0e2e66fca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2500000   0.2006047   0.2993953
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2558140   0.1252270   0.3864009
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.0701913   0.0507418   0.0896408
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0856817   0.0447634   0.1266001
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.0685542   0.0461130   0.0909954
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.1015697   0.0914796   0.1116599
0-24 months   COHORTS          INDIA                          <20                  NA                0.0985837   0.0676113   0.1295560
0-24 months   COHORTS          INDIA                          >=30                 NA                0.1089340   0.0918378   0.1260303
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.1223504   0.1072268   0.1374740
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.1311710   0.0955793   0.1667628
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.1256269   0.1033032   0.1479505
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.2389931   0.1990045   0.2789818
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.2717297   0.1960983   0.3473611
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.3072095   0.2205714   0.3938477
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0444695   0.0312197   0.0577193
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0479148   0.0315359   0.0642936
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0512910   0.0255546   0.0770274
0-24 months   IRC              INDIA                          [20-30)              NA                0.3426698   0.2923746   0.3929650
0-24 months   IRC              INDIA                          <20                  NA                0.2691712   0.1216957   0.4166468
0-24 months   IRC              INDIA                          >=30                 NA                0.4206881   0.2332650   0.6081112
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0575646   0.0527704   0.0623588
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0633144   0.0579323   0.0686965
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0693797   0.0580801   0.0806792
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1747153   0.1545009   0.1949296
0-24 months   Keneba           GAMBIA                         <20                  NA                0.1498470   0.1127454   0.1869485
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.2091545   0.1838035   0.2345055
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.1630695   0.1275833   0.1985558
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.0958904   0.0282924   0.1634885
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159684   0.2476679
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0792151   0.0553150   0.1031151
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1011329   0.0495897   0.1526761
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.0987528   0.0452460   0.1522595
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0817451   0.0471167   0.1163735
0-24 months   PROBIT           BELARUS                        <20                  NA                0.0669949   0.0369353   0.0970545
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.0711926   0.0414178   0.1009673
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.1525924   0.1221680   0.1830168
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.1164718   0.0357384   0.1972052
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.1438637   0.0946592   0.1930682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0629844   0.0509584   0.0750105
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0784916   0.0369447   0.1200384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0704848   0.0506183   0.0903514
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0939286   0.0877246   0.1001326
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0879061   0.0752232   0.1005889
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0927371   0.0787493   0.1067249
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1849315   0.1403402   0.2295228
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278510   0.2662666
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1904762   0.0715577   0.3093947
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.0570446   0.0374110   0.0766782
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.0859384   0.0374099   0.1344669
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.0609201   0.0375606   0.0842795
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.0701033   0.0614493   0.0787572
0-6 months    COHORTS          INDIA                          <20                  NA                0.0734202   0.0476095   0.0992309
0-6 months    COHORTS          INDIA                          >=30                 NA                0.0696685   0.0555246   0.0838124
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0693435   0.0577039   0.0809830
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0683644   0.0436477   0.0930811
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0649679   0.0481606   0.0817752
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.1104009   0.0810500   0.1397519
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.1194783   0.0646170   0.1743396
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.1147059   0.0529171   0.1764946
0-6 months    IRC              INDIA                          [20-30)              NA                0.3081395   0.2592876   0.3569915
0-6 months    IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
0-6 months    IRC              INDIA                          >=30                 NA                0.3793103   0.2024974   0.5561233
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.0397980   0.0355524   0.0440436
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.0402313   0.0357004   0.0447623
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.0540432   0.0435077   0.0645787
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.0915124   0.0746712   0.1083536
0-6 months    Keneba           GAMBIA                         <20                  NA                0.0840215   0.0532078   0.1148352
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.1012691   0.0814485   0.1210897
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.0889423   0.0615657   0.1163189
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.0833333   0.0194412   0.1472255
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.0984848   0.0476124   0.1493573
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0588523   0.0381194   0.0795851
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.0830524   0.0371287   0.1289761
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.0803688   0.0335658   0.1271719
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0811144   0.0462953   0.1159335
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0710825   0.0399982   0.1021668
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0690505   0.0396631   0.0984378
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.0654450   0.0396258   0.0912642
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.0471204   0.0196351   0.0746057
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.0952381   0.0672186   0.1232576
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0337365   0.0248065   0.0426664
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0479042   0.0155069   0.0803015
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0266458   0.0141467   0.0391449
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0681780   0.0629755   0.0733804
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.0724163   0.0604479   0.0843847
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0646662   0.0528230   0.0765094
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.0270728   0.0139828   0.0401628
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0290698   0.0039522   0.0541873
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.0200000   0.0070596   0.0329404
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.0364757   0.0298908   0.0430606
6-24 months   COHORTS          INDIA                          <20                  NA                0.0356224   0.0183243   0.0529204
6-24 months   COHORTS          INDIA                          >=30                 NA                0.0439203   0.0323942   0.0554464
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.0640915   0.0522998   0.0758833
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.0697884   0.0410712   0.0985055
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.0728014   0.0547195   0.0908834
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.1770266   0.1380315   0.2160217
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.2098466   0.1306549   0.2890382
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.2010521   0.1225379   0.2795663
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0448189   0.0315124   0.0581254
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.0484726   0.0319749   0.0649703
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.0499266   0.0249657   0.0748875
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0295546   0.0255085   0.0336008
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0342018   0.0297728   0.0386309
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0359657   0.0251967   0.0467347
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1137155   0.0961467   0.1312843
6-24 months   Keneba           GAMBIA                         <20                  NA                0.0835725   0.0533145   0.1138306
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.1422896   0.1198626   0.1647165
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.1023914   0.0746489   0.1301339
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.0602243   0.0056244   0.1148243
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.0886037   0.0588484   0.1183591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0367253   0.0265259   0.0469248
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0425532   0.0092282   0.0758782
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0522523   0.0337336   0.0707709
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0345265   0.0301524   0.0389006
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0221495   0.0149871   0.0293119
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0419947   0.0313581   0.0526313


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   COHORTS          INDIA                          NA                   NA                0.1031103   0.0949263   0.1112943
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471846   0.0353428   0.0590265
0-24 months   IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610132   0.0575333   0.0644930
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1822626   0.1681211   0.1964040
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1591640   0.1303913   0.1879367
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0784116   0.0458146   0.1110087
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0660774   0.0560867   0.0760682
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0919615   0.0871588   0.0967642
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    COHORTS          INDIA                          NA                   NA                0.0713446   0.0642809   0.0784082
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0413811   0.0384001   0.0443621
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0945172   0.0829165   0.1061178
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0903226   0.0677415   0.1129037
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0777153   0.0450748   0.1103558
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0328283   0.0256620   0.0399945
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0685487   0.0643349   0.0727624
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   COHORTS          INDIA                          NA                   NA                0.0381279   0.0327962   0.0434596
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0471846   0.0353428   0.0590265
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319223   0.0290352   0.0348093
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1178877   0.1056970   0.1300784
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329039   0.0295377   0.0362701


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8235294   0.4130909   1.6417711
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0232558   0.5919164   1.7689196
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.2206880   0.7027878   2.1202405
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9766760   0.6357961   1.5003177
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           0.9706011   0.6982301   1.3492208
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0725052   0.8909374   1.2910755
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0720930   0.7957612   1.4443823
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0267790   0.8268524   1.2750463
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.1369771   0.8213594   1.5738747
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2854324   0.9263388   1.7837278
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0774755   0.7053295   1.6459732
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1533974   0.6622739   2.0087239
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           0.7855120   0.4454429   1.3852035
0-24 months   IRC              INDIA                          >=30                 [20-30)           1.2276778   0.7680464   1.9623721
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0998839   0.9837342   1.2297474
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.2052481   1.0101770   1.4379885
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.8576639   0.6527274   1.1269441
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.1971165   1.0124703   1.4154371
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5880338   0.2811840   1.2297419
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1149733   0.7307436   1.7012334
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.2766872   0.7061345   2.3082433
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.2466409   0.6702680   2.3186448
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.8195580   0.6387075   1.0516166
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.8709091   0.7582360   1.0003252
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.7632870   0.4126184   1.4119754
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9427973   0.7946437   1.1185727
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2462055   0.7099087   2.1876448
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1190829   0.7962219   1.5728612
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9358815   0.7985660   1.0968088
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9873145   0.8374286   1.1640275
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7952070   0.3413429   1.8525481
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0299824   0.5274371   2.0113556
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.5065110   0.7776439   2.9185280
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.0679368   0.6377235   1.7883756
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.0473147   0.7216109   1.5200268
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9937980   0.7837691   1.2601090
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           0.9858800   0.6617801   1.4687043
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9369001   0.6882809   1.2753250
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.0822220   0.6365433   1.8399449
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0389936   0.5696588   1.8950077
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           0.7893932   0.4372748   1.4250572
0-6 months    IRC              INDIA                          >=30                 [20-30)           1.2309694   0.7523425   2.0140902
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0108893   0.8724094   1.1713504
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.3579396   1.0980635   1.6793199
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           0.9181429   0.6093850   1.3833395
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.1066156   0.8459226   1.4476478
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9369369   0.4101128   2.1405105
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1072891   0.6069010   2.0202458
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.4112005   0.7322439   2.7197042
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.3656028   0.6911210   2.6983276
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           0.8763233   0.6973260   1.1012677
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.8512724   0.7389232   0.9807038
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.7200000   0.4186812   1.2381735
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.4552381   1.0939298   1.9358810
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.4199525   0.6868599   2.9354825
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7898208   0.4609054   1.3534597
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0621660   0.8853929   1.2742326
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9484915   0.7778084   1.1566296
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.0737645   0.3989341   2.8901274
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.7387500   0.3293871   1.6568700
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           0.9766057   0.5820447   1.6386347
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.2040981   0.8760721   1.6549462
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0888858   0.6940106   1.7084354
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1358971   0.8340320   1.5470176
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.1853956   0.7658399   1.8347997
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1357168   0.7259812   1.7767026
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0815208   0.7066793   1.6551881
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1139635   0.6453318   1.9229095
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1572402   0.9620476   1.3920360
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.2169224   0.8740659   1.6942661
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.7349266   0.4957300   1.0895387
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.2512769   1.0032020   1.5606966
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.5881774   0.2487454   1.3907902
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           0.8653433   0.6841964   1.0944505
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1586879   0.5047784   2.6596972
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4227853   0.9069712   2.2319541
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.6415212   0.4533633   0.9077696
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.2163035   0.9163669   1.6144124


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0033512   -0.0254025    0.0187001
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0021427   -0.0118667    0.0161522
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0015406   -0.0045526    0.0076337
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0031011   -0.0066624    0.0128646
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0190244   -0.0060003    0.0440491
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0027152   -0.0072656    0.0126959
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0012064   -0.0213174    0.0189046
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0034486   -0.0000014    0.0068985
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0075473   -0.0071273    0.0222220
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0039056   -0.0238720    0.0160609
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0078562   -0.0074116    0.0231239
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0033335   -0.0065193   -0.0001476
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0052031   -0.0103458   -0.0000604
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0030930   -0.0042076    0.0103936
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0019672   -0.0057383    0.0018040
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0028663   -0.0226565    0.0169239
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0059845   -0.0084760    0.0204450
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0012413   -0.0039266    0.0064092
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0000268   -0.0073188    0.0072652
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0047594   -0.0133282    0.0228470
0-6 months    IRC              INDIA                          [20-30)              NA                -0.0008225   -0.0203468    0.0187019
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0015831   -0.0014171    0.0045834
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0030048   -0.0094150    0.0154245
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0013803   -0.0145456    0.0173061
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0071108   -0.0063908    0.0206124
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0033991   -0.0066433   -0.0001549
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0010002   -0.0036966    0.0056969
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009082   -0.0059724    0.0041560
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0003707   -0.0026841    0.0034256
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0023407   -0.0113312    0.0066498
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0016522   -0.0024868    0.0057912
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0028362   -0.0049639    0.0106363
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0128039   -0.0118886    0.0374964
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0023658   -0.0074757    0.0122073
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0023676   -0.0007475    0.0054827
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0041722   -0.0086580    0.0170023
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0059191   -0.0130436    0.0012053
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0047125   -0.0019571    0.0113821
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0016226   -0.0041750    0.0009298


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0135870   -0.1070401    0.0719771
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0296229   -0.1846525    0.2051410
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0149410   -0.0459444    0.0722823
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0247197   -0.0562788    0.0995070
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0737328   -0.0283783    0.1657050
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0575433   -0.1752734    0.2442400
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0035330   -0.0641907    0.0536672
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0565214   -0.0017036    0.1113621
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0414090   -0.0425960    0.1186455
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0245379   -0.1579328    0.0934897
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0902268   -0.1019681    0.2489010
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0425125   -0.0760412   -0.0100285
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0353018   -0.0700598   -0.0016727
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0468087   -0.0701271    0.1509666
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0213912   -0.0632106    0.0187834
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0157432   -0.1304383    0.0873149
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0949486   -0.1650371    0.2969168
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0173987   -0.0577526    0.0872108
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0003867   -0.1113152    0.0994691
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0413285   -0.1291765    0.1860874
0-6 months    IRC              INDIA                          [20-30)              NA                -0.0026763   -0.0682637    0.0588843
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0382575   -0.0371275    0.1081630
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0317905   -0.1089311    0.1546548
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0152816   -0.1777722    0.1766911
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.1077995   -0.1198682    0.2891826
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0437380   -0.0773126   -0.0112098
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0150524   -0.0603904    0.0851277
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0276649   -0.1939816    0.1154846
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0054082   -0.0401708    0.0489899
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0946418   -0.5237626    0.2136303
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0433335   -0.0714731    0.1458387
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0423768   -0.0813919    0.1519797
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0674492   -0.0719333    0.1887079
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0501382   -0.1795255    0.2350843
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0741688   -0.0283075    0.1664328
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0353912   -0.0798288    0.1383169
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0613559   -0.1311858    0.0041632
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1137250   -0.0607877    0.2595282
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0493144   -0.1295947    0.0252604
