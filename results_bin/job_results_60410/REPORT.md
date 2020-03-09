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

agecat        studyid          country                        mage       ever_wasted   n_cell       n
------------  ---------------  -----------------------------  --------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              0      118     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              1      178     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  0        9     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  1       25     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 0       18     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 1       25     373
0-24 months   COHORTS          GUATEMALA                      [20-30)              0      492    1341
0-24 months   COHORTS          GUATEMALA                      [20-30)              1      163    1341
0-24 months   COHORTS          GUATEMALA                      <20                  0      146    1341
0-24 months   COHORTS          GUATEMALA                      <20                  1       50    1341
0-24 months   COHORTS          GUATEMALA                      >=30                 0      361    1341
0-24 months   COHORTS          GUATEMALA                      >=30                 1      129    1341
0-24 months   COHORTS          INDIA                          [20-30)              0     2449    5305
0-24 months   COHORTS          INDIA                          [20-30)              1     1148    5305
0-24 months   COHORTS          INDIA                          <20                  0      274    5305
0-24 months   COHORTS          INDIA                          <20                  1      152    5305
0-24 months   COHORTS          INDIA                          >=30                 0      800    5305
0-24 months   COHORTS          INDIA                          >=30                 1      482    5305
0-24 months   COHORTS          PHILIPPINES                    [20-30)              0     1106    3045
0-24 months   COHORTS          PHILIPPINES                    [20-30)              1      714    3045
0-24 months   COHORTS          PHILIPPINES                    <20                  0      208    3045
0-24 months   COHORTS          PHILIPPINES                    <20                  1      169    3045
0-24 months   COHORTS          PHILIPPINES                    >=30                 0      502    3045
0-24 months   COHORTS          PHILIPPINES                    >=30                 1      346    3045
0-24 months   EE               PAKISTAN                       [20-30)              0       73     377
0-24 months   EE               PAKISTAN                       [20-30)              1       89     377
0-24 months   EE               PAKISTAN                       <20                  0        0     377
0-24 months   EE               PAKISTAN                       <20                  1        1     377
0-24 months   EE               PAKISTAN                       >=30                 0       81     377
0-24 months   EE               PAKISTAN                       >=30                 1      133     377
0-24 months   GMS-Nepal        NEPAL                          [20-30)              0      190     686
0-24 months   GMS-Nepal        NEPAL                          [20-30)              1      254     686
0-24 months   GMS-Nepal        NEPAL                          <20                  0       55     686
0-24 months   GMS-Nepal        NEPAL                          <20                  1       86     686
0-24 months   GMS-Nepal        NEPAL                          >=30                 0       36     686
0-24 months   GMS-Nepal        NEPAL                          >=30                 1       65     686
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              0      159     281
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              1       16     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                  0       41     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                  1        6     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 0       51     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 1        8     281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              0     1381    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              1      362    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  0      314    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  1       89    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3179
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3179
0-24 months   IRC              INDIA                          [20-30)              0      114     410
0-24 months   IRC              INDIA                          [20-30)              1      230     410
0-24 months   IRC              INDIA                          <20                  0       16     410
0-24 months   IRC              INDIA                          <20                  1       21     410
0-24 months   IRC              INDIA                          >=30                 0       11     410
0-24 months   IRC              INDIA                          >=30                 1       18     410
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              0     9437   26945
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              1     3153   26945
0-24 months   JiVitA-3         BANGLADESH                     <20                  0     8927   26945
0-24 months   JiVitA-3         BANGLADESH                     <20                  1     3124   26945
0-24 months   JiVitA-3         BANGLADESH                     >=30                 0     1627   26945
0-24 months   JiVitA-3         BANGLADESH                     >=30                 1      677   26945
0-24 months   Keneba           GAMBIA                         [20-30)              0      855    2864
0-24 months   Keneba           GAMBIA                         [20-30)              1      588    2864
0-24 months   Keneba           GAMBIA                         <20                  0      235    2864
0-24 months   Keneba           GAMBIA                         <20                  1      159    2864
0-24 months   Keneba           GAMBIA                         >=30                 0      503    2864
0-24 months   Keneba           GAMBIA                         >=30                 1      524    2864
0-24 months   LCNI-5           MALAWI                         [20-30)              0      337     670
0-24 months   LCNI-5           MALAWI                         [20-30)              1       27     670
0-24 months   LCNI-5           MALAWI                         <20                  0       99     670
0-24 months   LCNI-5           MALAWI                         <20                  1        9     670
0-24 months   LCNI-5           MALAWI                         >=30                 0      180     670
0-24 months   LCNI-5           MALAWI                         >=30                 1       18     670
0-24 months   MAL-ED           BANGLADESH                     [20-30)              0      130     263
0-24 months   MAL-ED           BANGLADESH                     [20-30)              1       50     263
0-24 months   MAL-ED           BANGLADESH                     <20                  0       18     263
0-24 months   MAL-ED           BANGLADESH                     <20                  1       19     263
0-24 months   MAL-ED           BANGLADESH                     >=30                 0       28     263
0-24 months   MAL-ED           BANGLADESH                     >=30                 1       18     263
0-24 months   MAL-ED           BRAZIL                         [20-30)              0      127     233
0-24 months   MAL-ED           BRAZIL                         [20-30)              1       12     233
0-24 months   MAL-ED           BRAZIL                         <20                  0       40     233
0-24 months   MAL-ED           BRAZIL                         <20                  1        3     233
0-24 months   MAL-ED           BRAZIL                         >=30                 0       46     233
0-24 months   MAL-ED           BRAZIL                         >=30                 1        5     233
0-24 months   MAL-ED           INDIA                          [20-30)              0       99     249
0-24 months   MAL-ED           INDIA                          [20-30)              1       95     249
0-24 months   MAL-ED           INDIA                          <20                  0       15     249
0-24 months   MAL-ED           INDIA                          <20                  1       19     249
0-24 months   MAL-ED           INDIA                          >=30                 0       16     249
0-24 months   MAL-ED           INDIA                          >=30                 1        5     249
0-24 months   MAL-ED           NEPAL                          [20-30)              0      130     240
0-24 months   MAL-ED           NEPAL                          [20-30)              1       59     240
0-24 months   MAL-ED           NEPAL                          <20                  0        2     240
0-24 months   MAL-ED           NEPAL                          <20                  1        3     240
0-24 months   MAL-ED           NEPAL                          >=30                 0       34     240
0-24 months   MAL-ED           NEPAL                          >=30                 1       12     240
0-24 months   MAL-ED           PERU                           [20-30)              0      139     302
0-24 months   MAL-ED           PERU                           [20-30)              1       14     302
0-24 months   MAL-ED           PERU                           <20                  0       74     302
0-24 months   MAL-ED           PERU                           <20                  1        8     302
0-24 months   MAL-ED           PERU                           >=30                 0       62     302
0-24 months   MAL-ED           PERU                           >=30                 1        5     302
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              0      123     312
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              1       36     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  0       38     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  1       10     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 0       87     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 1       18     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0      123     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0       13     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        3     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0       89     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       17     261
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              0      215     622
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              1      202     622
0-24 months   NIH-Birth        BANGLADESH                     <20                  0       47     622
0-24 months   NIH-Birth        BANGLADESH                     <20                  1       26     622
0-24 months   NIH-Birth        BANGLADESH                     >=30                 0       63     622
0-24 months   NIH-Birth        BANGLADESH                     >=30                 1       69     622
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              0      331     758
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              1      163     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                  0       90     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                  1       46     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 0       87     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 1       41     758
0-24 months   PROBIT           BELARUS                        [20-30)              0     8998   16898
0-24 months   PROBIT           BELARUS                        [20-30)              1     3132   16898
0-24 months   PROBIT           BELARUS                        <20                  0     1300   16898
0-24 months   PROBIT           BELARUS                        <20                  1      445   16898
0-24 months   PROBIT           BELARUS                        >=30                 0     2284   16898
0-24 months   PROBIT           BELARUS                        >=30                 1      739   16898
0-24 months   PROVIDE          BANGLADESH                     [20-30)              0      330     700
0-24 months   PROVIDE          BANGLADESH                     [20-30)              1      163     700
0-24 months   PROVIDE          BANGLADESH                     <20                  0       47     700
0-24 months   PROVIDE          BANGLADESH                     <20                  1       38     700
0-24 months   PROVIDE          BANGLADESH                     >=30                 0       77     700
0-24 months   PROVIDE          BANGLADESH                     >=30                 1       45     700
0-24 months   SAS-CompFeed     INDIA                          [20-30)              0      670    1513
0-24 months   SAS-CompFeed     INDIA                          [20-30)              1      482    1513
0-24 months   SAS-CompFeed     INDIA                          <20                  0      126    1513
0-24 months   SAS-CompFeed     INDIA                          <20                  1       66    1513
0-24 months   SAS-CompFeed     INDIA                          >=30                 0       89    1513
0-24 months   SAS-CompFeed     INDIA                          >=30                 1       80    1513
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              0      161     418
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              1      129     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                  0       20     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                  1       16     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 0       40     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 1       52     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1204    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      367    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      127    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       40    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      482    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      156    2376
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              0     7174   13908
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              1     2177   13908
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  0     1650   13908
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  1      568   13908
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 0     1794   13908
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 1      545   13908
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              0      139     368
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              1      153     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  0       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  1       18     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 0       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 1       19     368
0-6 months    COHORTS          GUATEMALA                      [20-30)              0      426    1063
0-6 months    COHORTS          GUATEMALA                      [20-30)              1       98    1063
0-6 months    COHORTS          GUATEMALA                      <20                  0      101    1063
0-6 months    COHORTS          GUATEMALA                      <20                  1       36    1063
0-6 months    COHORTS          GUATEMALA                      >=30                 0      323    1063
0-6 months    COHORTS          GUATEMALA                      >=30                 1       79    1063
0-6 months    COHORTS          INDIA                          [20-30)              0     2637    5102
0-6 months    COHORTS          INDIA                          [20-30)              1      825    5102
0-6 months    COHORTS          INDIA                          <20                  0      288    5102
0-6 months    COHORTS          INDIA                          <20                  1      112    5102
0-6 months    COHORTS          INDIA                          >=30                 0      901    5102
0-6 months    COHORTS          INDIA                          >=30                 1      339    5102
0-6 months    COHORTS          PHILIPPINES                    [20-30)              0     1400    3044
0-6 months    COHORTS          PHILIPPINES                    [20-30)              1      419    3044
0-6 months    COHORTS          PHILIPPINES                    <20                  0      277    3044
0-6 months    COHORTS          PHILIPPINES                    <20                  1      100    3044
0-6 months    COHORTS          PHILIPPINES                    >=30                 0      650    3044
0-6 months    COHORTS          PHILIPPINES                    >=30                 1      198    3044
0-6 months    EE               PAKISTAN                       [20-30)              0      121     377
0-6 months    EE               PAKISTAN                       [20-30)              1       41     377
0-6 months    EE               PAKISTAN                       <20                  0        0     377
0-6 months    EE               PAKISTAN                       <20                  1        1     377
0-6 months    EE               PAKISTAN                       >=30                 0      132     377
0-6 months    EE               PAKISTAN                       >=30                 1       82     377
0-6 months    GMS-Nepal        NEPAL                          [20-30)              0      283     686
0-6 months    GMS-Nepal        NEPAL                          [20-30)              1      161     686
0-6 months    GMS-Nepal        NEPAL                          <20                  0       81     686
0-6 months    GMS-Nepal        NEPAL                          <20                  1       60     686
0-6 months    GMS-Nepal        NEPAL                          >=30                 0       64     686
0-6 months    GMS-Nepal        NEPAL                          >=30                 1       37     686
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              0      163     264
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              1        1     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                  0       43     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                  1        3     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 0       49     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 1        5     264
0-6 months    IRC              INDIA                          [20-30)              0      157     410
0-6 months    IRC              INDIA                          [20-30)              1      187     410
0-6 months    IRC              INDIA                          <20                  0       17     410
0-6 months    IRC              INDIA                          <20                  1       20     410
0-6 months    IRC              INDIA                          >=30                 0       13     410
0-6 months    IRC              INDIA                          >=30                 1       16     410
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              0    10373   26848
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              1     2180   26848
0-6 months    JiVitA-3         BANGLADESH                     <20                  0     9942   26848
0-6 months    JiVitA-3         BANGLADESH                     <20                  1     2054   26848
0-6 months    JiVitA-3         BANGLADESH                     >=30                 0     1802   26848
0-6 months    JiVitA-3         BANGLADESH                     >=30                 1      497   26848
0-6 months    Keneba           GAMBIA                         [20-30)              0      887    2444
0-6 months    Keneba           GAMBIA                         [20-30)              1      287    2444
0-6 months    Keneba           GAMBIA                         <20                  0      254    2444
0-6 months    Keneba           GAMBIA                         <20                  1      104    2444
0-6 months    Keneba           GAMBIA                         >=30                 0      631    2444
0-6 months    Keneba           GAMBIA                         >=30                 1      281    2444
0-6 months    LCNI-5           MALAWI                         [20-30)              0      115     220
0-6 months    LCNI-5           MALAWI                         [20-30)              1        1     220
0-6 months    LCNI-5           MALAWI                         <20                  0       39     220
0-6 months    LCNI-5           MALAWI                         <20                  1        0     220
0-6 months    LCNI-5           MALAWI                         >=30                 0       63     220
0-6 months    LCNI-5           MALAWI                         >=30                 1        2     220
0-6 months    MAL-ED           BANGLADESH                     [20-30)              0      147     263
0-6 months    MAL-ED           BANGLADESH                     [20-30)              1       33     263
0-6 months    MAL-ED           BANGLADESH                     <20                  0       23     263
0-6 months    MAL-ED           BANGLADESH                     <20                  1       14     263
0-6 months    MAL-ED           BANGLADESH                     >=30                 0       33     263
0-6 months    MAL-ED           BANGLADESH                     >=30                 1       13     263
0-6 months    MAL-ED           BRAZIL                         [20-30)              0      131     233
0-6 months    MAL-ED           BRAZIL                         [20-30)              1        8     233
0-6 months    MAL-ED           BRAZIL                         <20                  0       40     233
0-6 months    MAL-ED           BRAZIL                         <20                  1        3     233
0-6 months    MAL-ED           BRAZIL                         >=30                 0       47     233
0-6 months    MAL-ED           BRAZIL                         >=30                 1        4     233
0-6 months    MAL-ED           INDIA                          [20-30)              0      129     249
0-6 months    MAL-ED           INDIA                          [20-30)              1       65     249
0-6 months    MAL-ED           INDIA                          <20                  0       22     249
0-6 months    MAL-ED           INDIA                          <20                  1       12     249
0-6 months    MAL-ED           INDIA                          >=30                 0       17     249
0-6 months    MAL-ED           INDIA                          >=30                 1        4     249
0-6 months    MAL-ED           NEPAL                          [20-30)              0      151     240
0-6 months    MAL-ED           NEPAL                          [20-30)              1       38     240
0-6 months    MAL-ED           NEPAL                          <20                  0        3     240
0-6 months    MAL-ED           NEPAL                          <20                  1        2     240
0-6 months    MAL-ED           NEPAL                          >=30                 0       38     240
0-6 months    MAL-ED           NEPAL                          >=30                 1        8     240
0-6 months    MAL-ED           PERU                           [20-30)              0      148     302
0-6 months    MAL-ED           PERU                           [20-30)              1        5     302
0-6 months    MAL-ED           PERU                           <20                  0       79     302
0-6 months    MAL-ED           PERU                           <20                  1        3     302
0-6 months    MAL-ED           PERU                           >=30                 0       64     302
0-6 months    MAL-ED           PERU                           >=30                 1        3     302
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              0      140     312
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              1       19     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  0       41     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  1        7     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 0       96     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 1        9     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0      138     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0       15     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0       95     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     261
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              0      258     620
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              1      158     620
0-6 months    NIH-Birth        BANGLADESH                     <20                  0       52     620
0-6 months    NIH-Birth        BANGLADESH                     <20                  1       20     620
0-6 months    NIH-Birth        BANGLADESH                     >=30                 0       88     620
0-6 months    NIH-Birth        BANGLADESH                     >=30                 1       44     620
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              0      368     758
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              1      126     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                  0       99     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                  1       37     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 0       96     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 1       32     758
0-6 months    PROBIT           BELARUS                        [20-30)              0     9065   16895
0-6 months    PROBIT           BELARUS                        [20-30)              1     3064   16895
0-6 months    PROBIT           BELARUS                        <20                  0     1311   16895
0-6 months    PROBIT           BELARUS                        <20                  1      433   16895
0-6 months    PROBIT           BELARUS                        >=30                 0     2295   16895
0-6 months    PROBIT           BELARUS                        >=30                 1      727   16895
0-6 months    PROVIDE          BANGLADESH                     [20-30)              0      369     700
0-6 months    PROVIDE          BANGLADESH                     [20-30)              1      124     700
0-6 months    PROVIDE          BANGLADESH                     <20                  0       62     700
0-6 months    PROVIDE          BANGLADESH                     <20                  1       23     700
0-6 months    PROVIDE          BANGLADESH                     >=30                 0       88     700
0-6 months    PROVIDE          BANGLADESH                     >=30                 1       34     700
0-6 months    SAS-CompFeed     INDIA                          [20-30)              0      889    1505
0-6 months    SAS-CompFeed     INDIA                          [20-30)              1      257    1505
0-6 months    SAS-CompFeed     INDIA                          <20                  0      160    1505
0-6 months    SAS-CompFeed     INDIA                          <20                  1       31    1505
0-6 months    SAS-CompFeed     INDIA                          >=30                 0      125    1505
0-6 months    SAS-CompFeed     INDIA                          >=30                 1       43    1505
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              0      243     418
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              1       47     418
0-6 months    SAS-FoodSuppl    INDIA                          <20                  0       29     418
0-6 months    SAS-FoodSuppl    INDIA                          <20                  1        7     418
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 0       68     418
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 1       24     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1352    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      219    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      142    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       25    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      550    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       88    2376
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              0     7635   13815
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              1     1662   13815
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  0     1757   13815
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  1      441   13815
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 0     1924   13815
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 1      396   13815
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              0      224     373
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              1       72     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  0       22     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  1       12     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 0       28     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 1       15     373
6-24 months   COHORTS          GUATEMALA                      [20-30)              0      512    1213
6-24 months   COHORTS          GUATEMALA                      [20-30)              1       79    1213
6-24 months   COHORTS          GUATEMALA                      <20                  0      156    1213
6-24 months   COHORTS          GUATEMALA                      <20                  1       16    1213
6-24 months   COHORTS          GUATEMALA                      >=30                 0      391    1213
6-24 months   COHORTS          GUATEMALA                      >=30                 1       59    1213
6-24 months   COHORTS          INDIA                          [20-30)              0     2960    4957
6-24 months   COHORTS          INDIA                          [20-30)              1      405    4957
6-24 months   COHORTS          INDIA                          <20                  0      319    4957
6-24 months   COHORTS          INDIA                          <20                  1       58    4957
6-24 months   COHORTS          INDIA                          >=30                 0     1025    4957
6-24 months   COHORTS          INDIA                          >=30                 1      190    4957
6-24 months   COHORTS          PHILIPPINES                    [20-30)              0     1259    2809
6-24 months   COHORTS          PHILIPPINES                    [20-30)              1      414    2809
6-24 months   COHORTS          PHILIPPINES                    <20                  0      232    2809
6-24 months   COHORTS          PHILIPPINES                    <20                  1      114    2809
6-24 months   COHORTS          PHILIPPINES                    >=30                 0      569    2809
6-24 months   COHORTS          PHILIPPINES                    >=30                 1      221    2809
6-24 months   EE               PAKISTAN                       [20-30)              0       94     371
6-24 months   EE               PAKISTAN                       [20-30)              1       66     371
6-24 months   EE               PAKISTAN                       <20                  0        1     371
6-24 months   EE               PAKISTAN                       <20                  1        0     371
6-24 months   EE               PAKISTAN                       >=30                 0      118     371
6-24 months   EE               PAKISTAN                       >=30                 1       92     371
6-24 months   GMS-Nepal        NEPAL                          [20-30)              0      207     590
6-24 months   GMS-Nepal        NEPAL                          [20-30)              1      175     590
6-24 months   GMS-Nepal        NEPAL                          <20                  0       65     590
6-24 months   GMS-Nepal        NEPAL                          <20                  1       54     590
6-24 months   GMS-Nepal        NEPAL                          >=30                 0       39     590
6-24 months   GMS-Nepal        NEPAL                          >=30                 1       50     590
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              0      150     265
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              1       16     265
6-24 months   Guatemala BSC    GUATEMALA                      <20                  0       38     265
6-24 months   Guatemala BSC    GUATEMALA                      <20                  1        4     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 0       54     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 1        3     265
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              0     1381    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              1      362    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  0      314    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  1       89    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3179
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3179
6-24 months   IRC              INDIA                          [20-30)              0      235     410
6-24 months   IRC              INDIA                          [20-30)              1      109     410
6-24 months   IRC              INDIA                          <20                  0       28     410
6-24 months   IRC              INDIA                          <20                  1        9     410
6-24 months   IRC              INDIA                          >=30                 0       20     410
6-24 months   IRC              INDIA                          >=30                 1        9     410
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              0     6609   17292
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              1     1248   17292
6-24 months   JiVitA-3         BANGLADESH                     <20                  0     6824   17292
6-24 months   JiVitA-3         BANGLADESH                     <20                  1     1359   17292
6-24 months   JiVitA-3         BANGLADESH                     >=30                 0     1022   17292
6-24 months   JiVitA-3         BANGLADESH                     >=30                 1      230   17292
6-24 months   Keneba           GAMBIA                         [20-30)              0      941    2689
6-24 months   Keneba           GAMBIA                         [20-30)              1      398    2689
6-24 months   Keneba           GAMBIA                         <20                  0      275    2689
6-24 months   Keneba           GAMBIA                         <20                  1       89    2689
6-24 months   Keneba           GAMBIA                         >=30                 0      612    2689
6-24 months   Keneba           GAMBIA                         >=30                 1      374    2689
6-24 months   LCNI-5           MALAWI                         [20-30)              0      330     659
6-24 months   LCNI-5           MALAWI                         [20-30)              1       27     659
6-24 months   LCNI-5           MALAWI                         <20                  0       97     659
6-24 months   LCNI-5           MALAWI                         <20                  1        9     659
6-24 months   LCNI-5           MALAWI                         >=30                 0      180     659
6-24 months   LCNI-5           MALAWI                         >=30                 1       16     659
6-24 months   MAL-ED           BANGLADESH                     [20-30)              0      137     240
6-24 months   MAL-ED           BANGLADESH                     [20-30)              1       26     240
6-24 months   MAL-ED           BANGLADESH                     <20                  0       27     240
6-24 months   MAL-ED           BANGLADESH                     <20                  1        8     240
6-24 months   MAL-ED           BANGLADESH                     >=30                 0       33     240
6-24 months   MAL-ED           BANGLADESH                     >=30                 1        9     240
6-24 months   MAL-ED           BRAZIL                         [20-30)              0      120     207
6-24 months   MAL-ED           BRAZIL                         [20-30)              1        4     207
6-24 months   MAL-ED           BRAZIL                         <20                  0       35     207
6-24 months   MAL-ED           BRAZIL                         <20                  1        1     207
6-24 months   MAL-ED           BRAZIL                         >=30                 0       46     207
6-24 months   MAL-ED           BRAZIL                         >=30                 1        1     207
6-24 months   MAL-ED           INDIA                          [20-30)              0      127     233
6-24 months   MAL-ED           INDIA                          [20-30)              1       51     233
6-24 months   MAL-ED           INDIA                          <20                  0       23     233
6-24 months   MAL-ED           INDIA                          <20                  1       11     233
6-24 months   MAL-ED           INDIA                          >=30                 0       19     233
6-24 months   MAL-ED           INDIA                          >=30                 1        2     233
6-24 months   MAL-ED           NEPAL                          [20-30)              0      153     235
6-24 months   MAL-ED           NEPAL                          [20-30)              1       31     235
6-24 months   MAL-ED           NEPAL                          <20                  0        4     235
6-24 months   MAL-ED           NEPAL                          <20                  1        1     235
6-24 months   MAL-ED           NEPAL                          >=30                 0       42     235
6-24 months   MAL-ED           NEPAL                          >=30                 1        4     235
6-24 months   MAL-ED           PERU                           [20-30)              0      124     270
6-24 months   MAL-ED           PERU                           [20-30)              1       10     270
6-24 months   MAL-ED           PERU                           <20                  0       69     270
6-24 months   MAL-ED           PERU                           <20                  1        6     270
6-24 months   MAL-ED           PERU                           >=30                 0       59     270
6-24 months   MAL-ED           PERU                           >=30                 1        2     270
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              0      102     259
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              1       20     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  0       37     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  1        5     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 0       83     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 1       12     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0      113     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1       15     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0       12     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0       92     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     245
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              0      258     540
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              1      102     540
6-24 months   NIH-Birth        BANGLADESH                     <20                  0       49     540
6-24 months   NIH-Birth        BANGLADESH                     <20                  1       12     540
6-24 months   NIH-Birth        BANGLADESH                     >=30                 0       75     540
6-24 months   NIH-Birth        BANGLADESH                     >=30                 1       44     540
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              0      413     730
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              1       61     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                  0      114     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                  1       19     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 0      107     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 1       16     730
6-24 months   PROBIT           BELARUS                        [20-30)              0    11784   16598
6-24 months   PROBIT           BELARUS                        [20-30)              1      110   16598
6-24 months   PROBIT           BELARUS                        <20                  0     1700   16598
6-24 months   PROBIT           BELARUS                        <20                  1       15   16598
6-24 months   PROBIT           BELARUS                        >=30                 0     2975   16598
6-24 months   PROBIT           BELARUS                        >=30                 1       14   16598
6-24 months   PROVIDE          BANGLADESH                     [20-30)              0      372     615
6-24 months   PROVIDE          BANGLADESH                     [20-30)              1       63     615
6-24 months   PROVIDE          BANGLADESH                     <20                  0       50     615
6-24 months   PROVIDE          BANGLADESH                     <20                  1       18     615
6-24 months   PROVIDE          BANGLADESH                     >=30                 0       94     615
6-24 months   PROVIDE          BANGLADESH                     >=30                 1       18     615
6-24 months   SAS-CompFeed     INDIA                          [20-30)              0      737    1389
6-24 months   SAS-CompFeed     INDIA                          [20-30)              1      320    1389
6-24 months   SAS-CompFeed     INDIA                          <20                  0      130    1389
6-24 months   SAS-CompFeed     INDIA                          <20                  1       52    1389
6-24 months   SAS-CompFeed     INDIA                          >=30                 0       97    1389
6-24 months   SAS-CompFeed     INDIA                          >=30                 1       53    1389
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              0      180     402
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              1       99     402
6-24 months   SAS-FoodSuppl    INDIA                          <20                  0       26     402
6-24 months   SAS-FoodSuppl    INDIA                          <20                  1       10     402
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 0       53     402
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 1       34     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0     1100    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      207    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0      120    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       21    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      461    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       94    2003
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              0     6515   10789
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              1      679   10789
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  0     1534   10789
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  1      169   10789
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 0     1705   10789
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 1      187   10789


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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/775925ce-ea48-4826-8da8-3fd70c169938/11475ac5-7ed7-4882-9040-1b0758d91b8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/775925ce-ea48-4826-8da8-3fd70c169938/11475ac5-7ed7-4882-9040-1b0758d91b8a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/775925ce-ea48-4826-8da8-3fd70c169938/11475ac5-7ed7-4882-9040-1b0758d91b8a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/775925ce-ea48-4826-8da8-3fd70c169938/11475ac5-7ed7-4882-9040-1b0758d91b8a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6013514   0.5454986   0.6572041
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.7352941   0.5868018   0.8837864
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5813953   0.4337450   0.7290457
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.2430776   0.2092133   0.2769419
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.2810939   0.2076680   0.3545199
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.2797723   0.2367367   0.3228079
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.3248970   0.3093350   0.3404590
0-24 months   COHORTS          INDIA                          <20                  NA                0.3533293   0.3049299   0.4017286
0-24 months   COHORTS          INDIA                          >=30                 NA                0.3575777   0.3303603   0.3847952
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.3940089   0.3712928   0.4167251
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.4365473   0.3838494   0.4892452
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.4039293   0.3705647   0.4372940
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5731127   0.5266594   0.6195659
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.6264320   0.5422885   0.7105754
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.5861047   0.4928743   0.6793351
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0914286   0.0486503   0.1342069
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.1276596   0.0320849   0.2232343
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2060971   0.1732686   0.2389256
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2127695   0.1579991   0.2675399
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2701815   0.2347447   0.3056182
0-24 months   IRC              INDIA                          [20-30)              NA                0.6682580   0.6183604   0.7181555
0-24 months   IRC              INDIA                          <20                  NA                0.5636423   0.3956920   0.7315927
0-24 months   IRC              INDIA                          >=30                 NA                0.6313691   0.4508013   0.8119368
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.2499380   0.2407578   0.2591181
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.2626187   0.2529664   0.2722710
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.2885610   0.2672696   0.3098525
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.4116054   0.3855432   0.4376676
0-24 months   Keneba           GAMBIA                         <20                  NA                0.3996519   0.3485976   0.4507062
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.4990328   0.4681071   0.5299585
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0741758   0.0472346   0.1011170
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.0833333   0.0311688   0.1354979
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.2758998   0.2104227   0.3413770
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.5428438   0.3735873   0.7121004
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3963058   0.2544071   0.5382044
0-24 months   MAL-ED           INDIA                          [20-30)              NA                0.4896907   0.4192054   0.5601761
0-24 months   MAL-ED           INDIA                          <20                  NA                0.5588235   0.3915890   0.7260581
0-24 months   MAL-ED           INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.0915033   0.0457415   0.1372650
0-24 months   MAL-ED           PERU                           <20                  NA                0.0975610   0.0332317   0.1618902
0-24 months   MAL-ED           PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.2267822   0.1613527   0.2922117
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.2020635   0.0843896   0.3197374
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1726848   0.0991591   0.2462105
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.4851857   0.4372749   0.5330964
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.3424872   0.2302139   0.4547606
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5300919   0.4433946   0.6167892
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.3299030   0.2883088   0.3714973
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.3267484   0.2460098   0.4074871
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.3531537   0.2666487   0.4396587
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.2585347   0.1969872   0.3200823
0-24 months   PROBIT           BELARUS                        <20                  NA                0.2558354   0.1927145   0.3189563
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.2495173   0.1940098   0.3050247
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.3346792   0.2931545   0.3762039
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.4032970   0.2955332   0.5110609
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3784459   0.2934306   0.4634613
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.4198109   0.3665788   0.4730429
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.3663831   0.2865365   0.4462297
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.4362982   0.3308144   0.5417820
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4414556   0.3840137   0.4988975
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.4170488   0.2491154   0.5849822
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.5432485   0.4405165   0.6459806
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2296724   0.2087558   0.2505890
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2388806   0.1706258   0.3071355
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2517350   0.2166942   0.2867758
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2339624   0.2249893   0.2429356
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.2481533   0.2286040   0.2677027
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2425555   0.2222505   0.2628605
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5233844   0.4658984   0.5808703
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.5458291   0.3767832   0.7148750
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4415597   0.2835703   0.5995491
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.1851404   0.1514384   0.2188423
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.2642334   0.1832112   0.3452556
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.1956869   0.1558784   0.2354955
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.2394512   0.2250312   0.2538713
0-6 months    COHORTS          INDIA                          <20                  NA                0.2696689   0.2233345   0.3160033
0-6 months    COHORTS          INDIA                          >=30                 NA                0.2664107   0.2406917   0.2921298
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.2302495   0.2106254   0.2498736
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2521445   0.2064752   0.2978139
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2305775   0.2020765   0.2590785
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.3611087   0.3161530   0.4060644
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.4239663   0.3394322   0.5085004
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.3367235   0.2475452   0.4259017
0-6 months    IRC              INDIA                          [20-30)              NA                0.5435271   0.4907366   0.5963177
0-6 months    IRC              INDIA                          <20                  NA                0.5324838   0.3620186   0.7029490
0-6 months    IRC              INDIA                          >=30                 NA                0.5597107   0.3693040   0.7501175
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.1722299   0.1642621   0.1801977
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.1741011   0.1656196   0.1825826
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.2134896   0.1938278   0.2331514
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.2428054   0.2178223   0.2677885
0-6 months    Keneba           GAMBIA                         <20                  NA                0.2968289   0.2455902   0.3480676
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.3041462   0.2737166   0.3345758
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.1846785   0.1278637   0.2414932
0-6 months    MAL-ED           BANGLADESH                     <20                  NA                0.4130501   0.2505363   0.5755639
0-6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.2874223   0.1565476   0.4182969
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.1194969   0.0689970   0.1699967
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.1458333   0.0458277   0.2458389
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.0857143   0.0320830   0.1393456
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.3801930   0.3335326   0.4268535
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.2576290   0.1528920   0.3623660
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3369797   0.2560410   0.4179183
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2549514   0.2163677   0.2935350
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.2564532   0.1802999   0.3326066
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2708788   0.1909864   0.3507713
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.2533091   0.1916046   0.3150135
0-6 months    PROBIT           BELARUS                        <20                  NA                0.2481892   0.1830749   0.3133035
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.2424224   0.1870549   0.2977900
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.2522038   0.2138462   0.2905615
0-6 months    PROVIDE          BANGLADESH                     <20                  NA                0.2582623   0.1609251   0.3555994
0-6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.2848714   0.2034240   0.3663187
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.2243989   0.1861188   0.2626789
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.1722272   0.1213179   0.2231366
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.2602571   0.1669544   0.3535598
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1620690   0.1196047   0.2045332
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.1944444   0.0650062   0.3238826
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.2608696   0.1710344   0.3507048
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1376588   0.1204897   0.1548280
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1660353   0.1041572   0.2279134
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1448270   0.1164785   0.1731754
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1772245   0.1692215   0.1852276
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.1959767   0.1778832   0.2140703
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1804162   0.1617096   0.1991228
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2427161   0.1937137   0.2917185
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.3594231   0.1896423   0.5292039
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3381854   0.1854013   0.4909695
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.1322538   0.1047136   0.1597939
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0927232   0.0485700   0.1368763
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.1335526   0.1018825   0.1652228
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.1269608   0.1153981   0.1385236
6-24 months   COHORTS          INDIA                          <20                  NA                0.1497100   0.1110552   0.1883648
6-24 months   COHORTS          INDIA                          >=30                 NA                0.1384644   0.1188768   0.1580520
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.2529875   0.2318704   0.2741046
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.3137962   0.2622333   0.3653591
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.2669713   0.2363551   0.2975876
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.4629824   0.4123234   0.5136414
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4742839   0.3770425   0.5715254
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.4977214   0.3963872   0.5990557
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2061118   0.1738123   0.2384114
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2098194   0.1560592   0.2635796
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2704660   0.2350562   0.3058757
6-24 months   IRC              INDIA                          [20-30)              NA                0.3168605   0.2676352   0.3660857
6-24 months   IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
6-24 months   IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.1606471   0.1516066   0.1696877
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.1678144   0.1581058   0.1775230
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.1778135   0.1556250   0.2000019
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.3001161   0.2749269   0.3253052
6-24 months   Keneba           GAMBIA                         <20                  NA                0.2349905   0.1885368   0.2814443
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.3851480   0.3538762   0.4164198
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0756303   0.0481820   0.1030785
6-24 months   LCNI-5           MALAWI                         <20                  NA                0.0849057   0.0318018   0.1380095
6-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1595092   0.1031817   0.2158367
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2285714   0.0891660   0.3679768
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.2142857   0.0899319   0.3386395
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.1639344   0.0981136   0.2297553
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.1190476   0.0209180   0.2171772
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.2832583   0.2364961   0.3300205
6-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.1847073   0.0802496   0.2891649
6-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.3635028   0.2759605   0.4510451
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1282658   0.0980395   0.1584920
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1365534   0.0764814   0.1966254
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.1261046   0.0660712   0.1861379
6-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0091312   0.0045962   0.0136662
6-24 months   PROBIT           BELARUS                        <20                  NA                0.0077505   0.0014975   0.0140035
6-24 months   PROBIT           BELARUS                        >=30                 NA                0.0050710   0.0020778   0.0080642
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1452536   0.1121345   0.1783728
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.2463279   0.1368184   0.3558374
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1624625   0.0934596   0.2314653
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.3051939   0.2644614   0.3459263
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.2851019   0.2274946   0.3427091
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.3289546   0.2493045   0.4086047
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.3557679   0.2994323   0.4121035
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.2750183   0.1208772   0.4291595
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.3875024   0.2831718   0.4918329
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1544866   0.1347962   0.1741770
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1465865   0.0851920   0.2079809
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1812976   0.1480410   0.2145543
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0974185   0.0900797   0.1047574
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0908330   0.0760016   0.1056644
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1072874   0.0912650   0.1233098


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   COHORTS          INDIA                          NA                   NA                0.3359095   0.3231988   0.3486203
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1067616   0.0705906   0.1429325
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2274300   0.2005343   0.2543257
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580813   0.2516131   0.2645495
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4437849   0.4255860   0.4619838
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0805970   0.0599695   0.1012246
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4779116   0.4157435   0.5400798
0-24 months   MAL-ED           PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4774920   0.4382065   0.5167774
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137040
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369529   0.2198518   0.2540539
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2365545   0.2294916   0.2436174
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    COHORTS          INDIA                          NA                   NA                0.2500980   0.2382136   0.2619824
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1762142   0.1705882   0.1818403
0-6 months    Keneba           GAMBIA                         NA                   NA                0.2749591   0.2572539   0.2926643
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2281369   0.1773250   0.2789488
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3580645   0.3202961   0.3958330
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2500148   0.1915461   0.3084835
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397306   0.1257869   0.1536744
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1808903   0.1744713   0.1873093
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   COHORTS          INDIA                          NA                   NA                0.1317329   0.1223171   0.1411487
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2274300   0.2005343   0.2543257
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1640643   0.1579507   0.1701779
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3201934   0.3025561   0.3378307
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0789074   0.0583085   0.0995064
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2925926   0.2541847   0.3310005
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607589   0.1446692   0.1768485
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959310   0.0903738   0.1014883


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2227363   0.9790304   1.5271068
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9668147   0.7377441   1.2670121
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.1563960   0.8613065   1.5525852
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.1509589   0.9364413   1.4146178
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.0875116   0.9406535   1.2572978
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.1005880   1.0060674   1.2039888
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.1079629   0.9692698   1.2665018
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0251781   0.9269737   1.1337863
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0930346   0.9342943   1.2787454
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0226693   0.8554698   1.2225475
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3962766   0.5775036   3.3758896
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4830508   0.6682686   3.2912512
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0323749   0.7962843   1.3384641
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3109424   1.1105841   1.5474470
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           0.8434502   0.6202935   1.1468897
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.9447984   0.7029520   1.2698506
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0507354   1.0012924   1.1026198
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1545306   1.0661790   1.2502037
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9709589   0.8418872   1.1198188
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.2124059   1.1099988   1.3242610
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           1.1234568   0.5448171   2.3166587
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.2255892   0.6922989   2.1696826
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.9675395   1.3284786   2.9140188
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.4364117   0.9359388   2.2045014
0-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <20                  [20-30)           1.1411765   0.8187157   1.5906423
0-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.4862155   0.2228779   1.0606955
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.0662021   0.4660440   2.4392264
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           0.8155650   0.3056183   2.1763956
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.8910025   0.4648684   1.7077636
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7614566   0.4551112   1.2740099
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7058890   0.5015890   0.9934017
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0925547   0.9025474   1.3225630
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.9904377   0.7509554   1.3062919
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0704772   0.8134238   1.4087631
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.9895591   0.8551838   1.1450490
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9651209   0.8816366   1.0565105
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.2050257   0.8974717   1.6179750
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1307722   0.8760306   1.4595903
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.8727337   0.7424345   1.0259009
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0392733   0.9057232   1.1925155
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9447129   0.6188561   1.4421484
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.2305847   0.9777835   1.5487464
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0400930   0.7706805   1.4036859
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0960614   0.9282445   1.2942179
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0606546   0.9717591   1.1576822
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0367284   0.9456202   1.1366147
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0428838   0.7507926   1.4486112
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8436624   0.5801923   1.2267764
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.4272061   0.9989038   2.0391525
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.0569653   0.8043050   1.3889952
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.1261955   0.9386536   1.3512081
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           1.1125886   0.9929596   1.2466302
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.0950926   0.8964892   1.3376936
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0014244   0.8618076   1.1636599
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.1740685   0.9282904   1.4849198
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9324712   0.6954942   1.2501939
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           0.9796821   0.7010875   1.3689833
0-6 months    IRC              INDIA                          >=30                 [20-30)           1.0297751   0.7228593   1.4670032
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0108645   0.9496870   1.0759830
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.2395616   1.1261726   1.3643673
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.2224973   0.9999821   1.4945264
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.2526336   1.0853973   1.4456374
0-6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           2.2365901   1.3560190   3.6889861
0-6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.5563386   0.8981413   2.6968918
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.2203947   0.5453440   2.7310530
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7172932   0.3371203   1.5261896
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6776267   0.4433869   1.0356148
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8863384   0.6771139   1.1602120
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0058907   0.7210555   1.4032431
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0624725   0.7631906   1.4791166
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           0.9797881   0.8405378   1.1421079
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9570224   0.8721579   1.0501445
0-6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.0240220   0.6821565   1.5372149
0-6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1295284   0.8173976   1.5608491
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.7675049   0.6460252   0.9118278
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1597969   0.8857511   1.5186308
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.1997636   0.5866857   2.4534990
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.6096207   1.0442361   2.4811236
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2061365   0.8140842   1.7869960
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0520717   0.8342051   1.3268378
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1058104   0.9978175   1.2254913
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0180094   0.9092025   1.1398375
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.4808375   0.8865804   2.4734135
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.3933372   0.8505987   2.2823789
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.7011006   0.4170176   1.1787080
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.0098211   0.7365048   1.3845648
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1791829   0.8969101   1.5502917
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0906074   0.9223117   1.2896124
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.2403623   1.0320376   1.4907388
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0552748   0.9162631   1.2153767
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0244103   0.8121477   1.2921497
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0750331   0.8534195   1.3541946
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0179881   0.7871848   1.3164632
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3122291   1.1119977   1.5485150
6-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          <20                  [20-30)           0.7676667   0.4256000   1.3846622
6-24 months   IRC              INDIA                          >=30                 [20-30)           0.9794369   0.5566759   1.7232588
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0446149   0.9650568   1.1307317
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1068573   0.9632734   1.2718435
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.7829989   0.6316396   0.9706282
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.2833302   1.1418249   1.4423721
6-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         <20                  [20-30)           1.1226415   0.5447478   2.3135918
6-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0793651   0.5960802   1.9544837
6-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.4329670   0.7082161   2.8993899
6-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.3434066   0.6810587   2.6499056
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.7261905   0.2903065   1.8165373
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7705263   0.3963351   1.4980020
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6520807   0.3617186   1.1755249
6-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2832910   0.9582566   1.7185749
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0646130   0.6461865   1.7539839
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9831508   0.5778054   1.6728564
6-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.8487868   0.4675564   1.5408603
6-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.5553464   0.2889422   1.0673749
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.6958469   1.0291654   2.7943968
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1184744   0.6908539   1.8107806
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9341665   0.8109434   1.0761132
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0778546   0.8850496   1.3126616
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.7730274   0.4317260   1.3841447
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0891999   0.7968174   1.4888686
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9488620   0.6125696   1.4697743
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1735494   0.9387858   1.4670205
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9323993   0.7790848   1.1158842
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1013036   0.9318237   1.3016084


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0099087   -0.0150357   0.0348531
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0119560   -0.0130790   0.0369910
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0110125    0.0017864   0.0202387
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0096035   -0.0050240   0.0242311
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0172663   -0.0101130   0.0446456
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0153330   -0.0139754   0.0446414
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0213329    0.0061032   0.0365625
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0121604   -0.0332069   0.0088861
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0081433    0.0018127   0.0144739
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0321795    0.0134179   0.0509411
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0064212   -0.0126225   0.0254649
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0548986    0.0142655   0.0955317
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0117791   -0.0448166   0.0212585
0-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0020993   -0.0338995   0.0297009
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0216540   -0.0658880   0.0225800
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0076937   -0.0353062   0.0199188
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0000877   -0.0246500   0.0244745
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0031199   -0.0096092   0.0033694
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0167494   -0.0065397   0.0400384
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0047415   -0.0139695   0.0044866
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0298362   -0.0025434   0.0622159
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0072805   -0.0051164   0.0196774
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0025921   -0.0029617   0.0081459
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0070800   -0.0333347   0.0191747
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0152359   -0.0096639   0.0401358
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0106468    0.0020151   0.0192784
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0052958   -0.0074565   0.0180482
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0149846   -0.0121288   0.0420980
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0003753   -0.0208666   0.0216172
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0039843   -0.0015555   0.0095242
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0321537    0.0133811   0.0509263
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0434584    0.0058893   0.0810275
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0073174   -0.0416853   0.0270505
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0221285   -0.0482002   0.0039431
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0023046   -0.0206581   0.0252673
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0032943   -0.0097070   0.0031185
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0063676   -0.0149629   0.0276982
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0044653   -0.0143501   0.0054195
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0245339   -0.0019120   0.0509798
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020718   -0.0080538   0.0121975
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0036658   -0.0012004   0.0085321
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0226995   -0.0018720   0.0472710
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0052958   -0.0246362   0.0140445
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0047721   -0.0023960   0.0119402
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0136554   -0.0002818   0.0275927
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0098989   -0.0203164   0.0401142
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0213182    0.0063531   0.0362833
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0071044   -0.0262133   0.0120045
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0034172   -0.0035139   0.0103482
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0200773    0.0017106   0.0384441
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0032772   -0.0157344   0.0222887
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0196575   -0.0153694   0.0546844
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0210773   -0.0666196   0.0244650
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0093343   -0.0181539   0.0368224
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0032411   -0.0149837   0.0214659
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0007567   -0.0016995   0.0001860
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0157220   -0.0040766   0.0355205
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0007817   -0.0085048   0.0100682
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0000465   -0.0312943   0.0312013
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0062723   -0.0055733   0.0181179
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0014875   -0.0061406   0.0031656


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0162103   -0.0255022   0.0562261
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0468801   -0.0565203   0.1401607
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0327842    0.0049201   0.0598680
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0237940   -0.0131403   0.0593818
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0292462   -0.0183422   0.0746107
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1436190   -0.1752619   0.3759788
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0937998    0.0215734   0.1606945
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0185344   -0.0512005   0.0131166
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0315532    0.0066739   0.0558094
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0725116    0.0291656   0.1139222
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.1887603   0.2874874
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1659579    0.0341263   0.2797959
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0246470   -0.0962308   0.0422625
0-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0234810   -0.4486935   0.2769255
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1055634   -0.3429793   0.0898814
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0161127   -0.0756408   0.0401210
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0002660   -0.0775812   0.0715019
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0122150   -0.0367576   0.0117467
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0476608   -0.0209349   0.1116475
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0114233   -0.0346989   0.0113287
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0633074   -0.0082041   0.1297466
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0307255   -0.0230322   0.0816584
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0109575   -0.0128027   0.0341603
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0137129   -0.0658794   0.0359006
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0760366   -0.0568012   0.1921770
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0425703    0.0074459   0.0764518
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0224833   -0.0331849   0.0751520
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0398428   -0.0350720   0.1093355
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0006900   -0.0391379   0.0389915
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0226108   -0.0093607   0.0535697
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.1169399    0.0460192   0.1825883
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.1904926    0.0116220   0.3369923
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0652291   -0.4195344   0.2006442
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0618004   -0.1372285   0.0086248
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0089583   -0.0844455   0.0943171
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0131763   -0.0378458   0.0109069
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0246261   -0.0614292   0.1037046
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0203030   -0.0693779   0.0265199
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1314766   -0.0207230   0.2609817
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0148272   -0.0603740   0.0846951
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0202654   -0.0070090   0.0468010
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0855242   -0.0115841   0.1733105
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0417131   -0.2055703   0.0998732
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0362254   -0.0196902   0.0890749
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0512124   -0.0025080   0.1020541
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0209332   -0.0451423   0.0828313
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0937350    0.0230993   0.1592634
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0229354   -0.0865158   0.0369245
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0208282   -0.0223145   0.0621502
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0627037    0.0035190   0.1183732
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0415320   -0.2321283   0.2544113
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1097161   -0.1071782   0.2841211
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1475410   -0.5125291   0.1293719
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0319020   -0.0667609   0.1214397
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0246458   -0.1242348   0.1538105
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0903616   -0.1915635   0.0022450
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0976668   -0.0330863   0.2118710
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0025546   -0.0281691   0.0323602
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0001307   -0.0919474   0.0839655
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0390166   -0.0375523   0.1099349
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0155060   -0.0651725   0.0318447
