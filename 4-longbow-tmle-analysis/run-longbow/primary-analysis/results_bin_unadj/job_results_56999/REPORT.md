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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/4f716039-8efa-4bf5-bf1a-fd6afbdd037d/ed57d852-d399-4ee8-a1ef-a5cfffe7b8f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4f716039-8efa-4bf5-bf1a-fd6afbdd037d/ed57d852-d399-4ee8-a1ef-a5cfffe7b8f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4f716039-8efa-4bf5-bf1a-fd6afbdd037d/ed57d852-d399-4ee8-a1ef-a5cfffe7b8f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4f716039-8efa-4bf5-bf1a-fd6afbdd037d/ed57d852-d399-4ee8-a1ef-a5cfffe7b8f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6013514   0.5454986   0.6572041
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.7352941   0.5868018   0.8837864
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5813953   0.4337450   0.7290457
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.2488550   0.2157324   0.2819776
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.2551020   0.1940518   0.3161523
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.2632653   0.2242563   0.3022743
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.3191549   0.3039198   0.3343899
0-24 months   COHORTS          INDIA                          <20                  NA                0.3568075   0.3113117   0.4023034
0-24 months   COHORTS          INDIA                          >=30                 NA                0.3759750   0.3494580   0.4024921
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.3923077   0.3698720   0.4147434
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.4482759   0.3980668   0.4984850
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.4080189   0.3749351   0.4411027
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5720721   0.5260163   0.6181278
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.6099291   0.5293603   0.6904979
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.6435644   0.5500904   0.7370383
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0914286   0.0486503   0.1342069
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.1276596   0.0320849   0.2232343
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2076879   0.1733183   0.2420575
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2208437   0.1702129   0.2714745
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2633107   0.2290040   0.2976175
0-24 months   IRC              INDIA                          [20-30)              NA                0.6686047   0.6188015   0.7184078
0-24 months   IRC              INDIA                          <20                  NA                0.5675676   0.4077423   0.7273928
0-24 months   IRC              INDIA                          >=30                 NA                0.6206897   0.4438767   0.7975026
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.4074844   0.3821275   0.4328413
0-24 months   Keneba           GAMBIA                         <20                  NA                0.4035533   0.3551013   0.4520053
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.5102240   0.4796453   0.5408026
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0741758   0.0472346   0.1011170
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.0833333   0.0311688   0.1354979
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.2777778   0.2122201   0.3433354
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.5135135   0.3521573   0.6748698
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3913043   0.2500005   0.5326081
0-24 months   MAL-ED           INDIA                          [20-30)              NA                0.4896907   0.4192054   0.5601761
0-24 months   MAL-ED           INDIA                          <20                  NA                0.5588235   0.3915890   0.7260581
0-24 months   MAL-ED           INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.0915033   0.0457415   0.1372650
0-24 months   MAL-ED           PERU                           <20                  NA                0.0975610   0.0332317   0.1618902
0-24 months   MAL-ED           PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.2264151   0.1612593   0.2915709
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.2083333   0.0932599   0.3234068
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1714286   0.0992253   0.2436319
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.4844125   0.4364073   0.5324177
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.3561644   0.2462261   0.4661026
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5227273   0.4374504   0.6080042
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.3299595   0.2884687   0.3714503
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.3382353   0.2586695   0.4178011
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.3203125   0.2394269   0.4011981
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.2582028   0.1979061   0.3184995
0-24 months   PROBIT           BELARUS                        <20                  NA                0.2550143   0.1933511   0.3166776
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.2444591   0.1887814   0.3001369
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.3306288   0.2890723   0.3721853
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.4470588   0.3412868   0.5528309
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3688525   0.2831742   0.4545307
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.4184028   0.3690272   0.4677784
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.3437500   0.2634334   0.4240666
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.4733728   0.3676148   0.5791308
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4448276   0.3875639   0.5020912
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.4444444   0.2819309   0.6069579
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.5652174   0.4637987   0.6666361
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2336092   0.2126815   0.2545369
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2395210   0.1747774   0.3042645
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2445141   0.2111565   0.2778717
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2328093   0.2242432   0.2413755
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.2560866   0.2379215   0.2742517
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2330056   0.2158728   0.2501383
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5239726   0.4666115   0.5813337
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.5294118   0.3614088   0.6974147
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4523810   0.3016489   0.6031131
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.1870229   0.1536208   0.2204250
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.2627737   0.1890370   0.3365104
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.1965174   0.1576551   0.2353797
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.2383016   0.2241083   0.2524948
0-6 months    COHORTS          INDIA                          <20                  NA                0.2800000   0.2359946   0.3240054
0-6 months    COHORTS          INDIA                          >=30                 NA                0.2733871   0.2485775   0.2981967
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.2303463   0.2109937   0.2496990
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2652520   0.2206815   0.3098225
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2334906   0.2050122   0.2619689
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.3626126   0.3178622   0.4073630
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.4255319   0.3438635   0.5072004
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.3663366   0.2723051   0.4603682
0-6 months    IRC              INDIA                          [20-30)              NA                0.5436047   0.4909046   0.5963047
0-6 months    IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    IRC              INDIA                          >=30                 NA                0.5517241   0.3705013   0.7329470
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.2444634   0.2198746   0.2690522
0-6 months    Keneba           GAMBIA                         <20                  NA                0.2905028   0.2434651   0.3375405
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.3081140   0.2781423   0.3380858
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.1833333   0.1266987   0.2399680
0-6 months    MAL-ED           BANGLADESH                     <20                  NA                0.3783784   0.2218112   0.5349455
0-6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.2826087   0.1522418   0.4129756
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.1194969   0.0689970   0.1699967
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.1458333   0.0458277   0.2458389
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.0857143   0.0320830   0.1393456
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.3798077   0.3331313   0.4264841
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.2777778   0.1742358   0.3813198
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3333333   0.2528501   0.4138166
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2550607   0.2165968   0.2935246
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.2720588   0.1972169   0.3469007
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2500000   0.1749362   0.3250638
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.2526177   0.1921179   0.3131175
0-6 months    PROBIT           BELARUS                        <20                  NA                0.2482798   0.1857298   0.3108298
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.2405692   0.1851115   0.2960268
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.2515213   0.2131937   0.2898489
0-6 months    PROVIDE          BANGLADESH                     <20                  NA                0.2705882   0.1760756   0.3651009
0-6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.2786885   0.1990727   0.3583044
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.2242583   0.1861984   0.2623182
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.1623037   0.1121198   0.2124875
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.2559524   0.1569369   0.3549678
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1620690   0.1196047   0.2045332
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.1944444   0.0650062   0.3238826
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.2608696   0.1710344   0.3507048
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1394017   0.1222705   0.1565328
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1497006   0.0955780   0.2038232
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1379310   0.1111683   0.1646938
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1787673   0.1709786   0.1865561
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.2006369   0.1838942   0.2173797
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1706897   0.1553794   0.1859999
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2432432   0.1943010   0.2921855
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.3529412   0.1920936   0.5137888
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3488372   0.2061934   0.4914810
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.1336717   0.1062248   0.1611187
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0930233   0.0495966   0.1364500
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.1311111   0.0999134   0.1623088
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.1203566   0.1093618   0.1313514
6-24 months   COHORTS          INDIA                          <20                  NA                0.1538462   0.1174220   0.1902703
6-24 months   COHORTS          INDIA                          >=30                 NA                0.1563786   0.1359534   0.1768038
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.2474597   0.2267776   0.2681417
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.3294798   0.2799453   0.3790143
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.2797468   0.2484402   0.3110535
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.4581152   0.4081088   0.5081216
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4537815   0.3642554   0.5433076
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.5617978   0.4586289   0.6649666
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.2076879   0.1733183   0.2420575
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2208437   0.1702129   0.2714745
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2633107   0.2290040   0.2976175
6-24 months   IRC              INDIA                          [20-30)              NA                0.3168605   0.2676352   0.3660857
6-24 months   IRC              INDIA                          <20                  NA                0.2432432   0.1048305   0.3816560
6-24 months   IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.2972367   0.2727521   0.3217214
6-24 months   Keneba           GAMBIA                         <20                  NA                0.2445055   0.2003446   0.2886664
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.3793103   0.3490186   0.4096021
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0756303   0.0481820   0.1030785
6-24 months   LCNI-5           MALAWI                         <20                  NA                0.0849057   0.0318018   0.1380095
6-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1595092   0.1031817   0.2158367
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2285714   0.0891660   0.3679768
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.2142857   0.0899319   0.3386395
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.1639344   0.0981136   0.2297553
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.1190476   0.0209180   0.2171772
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.2833333   0.2367418   0.3299248
6-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.1967213   0.0968721   0.2965705
6-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.3697479   0.2829344   0.4565614
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1286920   0.0985260   0.1588580
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1428571   0.0833461   0.2023682
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.1300813   0.0705918   0.1895708
6-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0092484   0.0046783   0.0138184
6-24 months   PROBIT           BELARUS                        <20                  NA                0.0087464   0.0018216   0.0156711
6-24 months   PROBIT           BELARUS                        >=30                 NA                0.0046838   0.0017273   0.0076404
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1448276   0.1117290   0.1779262
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.2647059   0.1597615   0.3696503
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1607143   0.0926413   0.2287872
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.3027436   0.2638650   0.3416222
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.2857143   0.2292691   0.3421595
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.3533333   0.2709883   0.4356784
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.3548387   0.2986257   0.4110517
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.2777778   0.1312831   0.4242725
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.3908046   0.2881479   0.4934613
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1583780   0.1385798   0.1781761
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1489362   0.0901564   0.2077160
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1693694   0.1381567   0.2005821
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0943842   0.0876280   0.1011404
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0992366   0.0850362   0.1134371
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0988372   0.0853888   0.1122856


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
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4437849   0.4255860   0.4619838
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0805970   0.0599695   0.1012246
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4779116   0.4157435   0.5400798
0-24 months   MAL-ED           PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4774920   0.4382065   0.5167774
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137039
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
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.0251033   0.7795438   1.3480150
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.0579066   0.8668548   1.2910656
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1179761   0.9756703   1.2810380
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.1780333   1.0818600   1.2827560
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.1426640   1.0076309   1.2957928
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0400481   0.9418060   1.1485381
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0661752   0.9133672   1.2445484
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1249708   0.9528413   1.3281952
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3962766   0.5775036   3.3758896
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4830508   0.6682686   3.2912512
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0633440   0.8316319   1.3596165
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2678194   1.0576854   1.5197015
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           0.8488837   0.6343748   1.1359270
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.9283358   0.6915604   1.2461781
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9903527   0.8650866   1.1337576
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.2521312   1.1484944   1.3651199
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           1.1234568   0.5448171   2.3166587
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.2255892   0.6922989   2.1696826
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.8486486   1.2479152   2.7385690
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.4086957   0.9150939   2.1685462
0-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <20                  [20-30)           1.1411765   0.8187157   1.5906423
0-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.4862155   0.2228779   1.0606955
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.0662021   0.4660440   2.4392264
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           0.8155650   0.3056183   2.1763956
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.9201389   0.4935893   1.7153038
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7571429   0.4546119   1.2609995
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7352502   0.5316685   1.0167857
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0790954   0.8915835   1.3060436
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0250812   0.7850832   1.3384459
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9707630   0.7321500   1.2871418
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.9876513   0.8643373   1.1285583
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9467719   0.8741109   1.0254728
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.3521472   1.0343622   1.7675647
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1156090   0.8566653   1.4528234
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.8215768   0.7004297   0.9636775
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1313806   0.9932841   1.2886767
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9991387   0.6780624   1.4722511
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.2706437   1.0188641   1.5846427
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0253063   0.7712279   1.3630900
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0466803   0.8890655   1.2322372
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0999841   1.0155060   1.1914898
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0008429   0.9218439   1.0866118
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0103806   0.7222645   1.4134281
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8633676   0.6079666   1.2260600
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.4050350   1.0074656   1.9594946
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.0507666   0.8049728   1.3716120
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.1749818   0.9932064   1.3900255
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           1.1472317   1.0292220   1.2787722
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.1515355   0.9543089   1.3895229
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0136500   0.8741124   1.1754625
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.1735166   0.9341014   1.4742951
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0102700   0.7598837   1.3431600
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           0.9943633   0.7272502   1.3595851
0-6 months    IRC              INDIA                          >=30                 [20-30)           1.0149364   0.7206163   1.4294650
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.1883285   0.9820941   1.4378710
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.2603689   1.0957930   1.4496622
0-6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           2.0638821   1.2314717   3.4589581
0-6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.5415020   0.8847739   2.6856898
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.2203947   0.5453440   2.7310530
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7172932   0.3371203   1.5261896
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7313643   0.4939449   1.0829015
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8776371   0.6693499   1.1507389
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0666433   0.7794235   1.4597044
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9801587   0.7004455   1.3715716
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           0.9828283   0.8560276   1.1284116
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9523053   0.8767605   1.0343593
0-6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.0758065   0.7349091   1.5748337
0-6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1080116   0.8015454   1.5316535
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.7237354   0.6095425   0.8593214
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1413285   0.8667955   1.5028121
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.1997636   0.5866857   2.4534990
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.6096207   1.0442361   2.4811236
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0738796   0.7330244   1.5732321
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9894505   0.7864087   1.2449153
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1223355   1.0215022   1.2331223
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9548145   0.8641954   1.0549359
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.4509804   0.8816715   2.3879008
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.4341085   0.9091996   2.2620635
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.6959082   0.4178907   1.1588871
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9808439   0.7163148   1.3430614
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.2782526   0.9917586   1.6475075
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.2992938   1.1078609   1.5238054
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.3314484   1.1210395   1.5813492
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1304745   0.9831063   1.2999333
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           0.9905402   0.7905883   1.2410631
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2263242   0.9904342   1.5183957
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.0633440   0.8316319   1.3596165
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2678194   1.0576854   1.5197015
6-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          <20                  [20-30)           0.7676667   0.4256000   1.3846622
6-24 months   IRC              INDIA                          >=30                 [20-30)           0.9794369   0.5566759   1.7232588
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.8225951   0.6744874   1.0032251
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.2761220   1.1377981   1.4312621
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
6-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6943105   0.4072306   1.1837694
6-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.3049926   0.9797563   1.7381931
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1100703   0.6882694   1.7903686
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0107957   0.6046165   1.6898447
6-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.9457196   0.5182951   1.7256298
6-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.5064509   0.2534931   1.0118323
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.8277311   1.1565770   2.8883515
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1096939   0.6857772   1.7956568
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9437500   0.8374419   1.0635532
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1671042   0.9705130   1.4035176
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.7828283   0.4513544   1.3577359
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.1013584   0.8104151   1.4967519
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9403844   0.6216022   1.4226508
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0693998   0.8559126   1.3361364
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0514115   0.8959517   1.2338457
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0471795   0.8979455   1.2212155


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0099087   -0.0150357   0.0348531
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0061786   -0.0176965   0.0300537
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0167547    0.0078713   0.0256381
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0113048   -0.0030274   0.0256370
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0183069   -0.0087411   0.0453549
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0153330   -0.0139754   0.0446414
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0197421    0.0039116   0.0355727
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0125071   -0.0334217   0.0084075
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0363005    0.0182378   0.0543632
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0064212   -0.0126225   0.0254649
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0530207    0.0122699   0.0937715
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0117791   -0.0448166   0.0212585
0-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0020993   -0.0338995   0.0297009
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0212869   -0.0652454   0.0226717
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0069205   -0.0344503   0.0206093
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0001442   -0.0246252   0.0243368
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0027880   -0.0086639   0.0030880
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0207998   -0.0025888   0.0441883
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0033334   -0.0131339   0.0064672
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0264643   -0.0055448   0.0584734
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0033437   -0.0089546   0.0156420
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0037452   -0.0012138   0.0087042
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0076683   -0.0337978   0.0184613
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0133534   -0.0110456   0.0377524
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0117964    0.0034718   0.0201210
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0051990   -0.0072198   0.0176178
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0134807   -0.0134676   0.0404289
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0002978   -0.0208406   0.0214362
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0304957    0.0121320   0.0488594
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0448035    0.0074022   0.0822049
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0073174   -0.0416853   0.0270505
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0217432   -0.0478485   0.0043621
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0021952   -0.0206239   0.0250143
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0026029   -0.0085999   0.0033941
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0070501   -0.0142428   0.0283430
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0043247   -0.0139338   0.0052843
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0245339   -0.0019120   0.0509798
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0003290   -0.0096617   0.0103197
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0021230   -0.0023734   0.0066194
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0221723   -0.0024646   0.0468093
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0067138   -0.0259638   0.0125362
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0113763    0.0046369   0.0181156
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0191833    0.0055547   0.0328119
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0147662   -0.0150370   0.0445693
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0197421    0.0039116   0.0355727
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0071044   -0.0262133   0.0120045
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0229566    0.0052499   0.0406633
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0032772   -0.0157344   0.0222887
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0196575   -0.0153694   0.0546844
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0210773   -0.0666196   0.0244650
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0092593   -0.0181556   0.0366741
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0028149   -0.0153536   0.0209833
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0008739   -0.0018883   0.0001406
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0161480   -0.0036200   0.0359160
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0032319   -0.0051820   0.0116458
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0008827   -0.0302506   0.0320160
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0023809   -0.0094221   0.0141839
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0015468   -0.0024099   0.0055036


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0162103   -0.0255022    0.0562261
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0242266   -0.0740173    0.1134838
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0498785    0.0230639    0.0759571
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0280090   -0.0081642    0.0628843
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0310088   -0.0159829    0.0758270
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1436190   -0.1752619    0.3759788
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0868052    0.0110363    0.1567691
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0190629   -0.0515274    0.0123994
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0817975    0.0401133    0.1216715
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.1887603    0.2874874
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1602810    0.0282063    0.2744056
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0246470   -0.0962308    0.0422625
0-24 months   MAL-ED           PERU                           [20-30)              NA                -0.0234810   -0.4486935    0.2769255
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1037736   -0.3396598    0.0905780
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0144935   -0.0738294    0.0415638
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0004372   -0.0774866    0.0711024
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0109154   -0.0335573    0.0112304
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0591863   -0.0097826    0.1234446
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0080309   -0.0328414    0.0161836
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0561526   -0.0144443    0.1218366
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0141112   -0.0391772    0.0646671
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0158322   -0.0053541    0.0365720
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0148522   -0.0667703    0.0345391
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0666416   -0.0632643    0.1806760
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0471673    0.0133222    0.0798514
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0220721   -0.0320907    0.0733926
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0358440   -0.0385534    0.1049119
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0005475   -0.0390824    0.0386660
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.1109100    0.0416848    0.1751346
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.1963889    0.0183109    0.3421636
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0652291   -0.4195344    0.2006442
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0607242   -0.1362500    0.0097815
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0085332   -0.0842556    0.0933812
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0104110   -0.0340723    0.0127089
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0272657   -0.0586438    0.1062036
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0196638   -0.0674585    0.0259908
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1314766   -0.0207230    0.2609817
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0023544   -0.0717696    0.0713520
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0117363   -0.0134340    0.0362815
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0835381   -0.0137474    0.1714875
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0528820   -0.2158068    0.0882100
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0863588    0.0340254    0.1358569
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0719437    0.0194636    0.1216150
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0312260   -0.0339381    0.0922831
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0868052    0.0110363    0.1567691
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0229354   -0.0865158    0.0369245
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0716962    0.0147346    0.1253646
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0415320   -0.2321283    0.2544113
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1097161   -0.1071782    0.2841211
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1475410   -0.5125291    0.1293719
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0316456   -0.0667134    0.1209351
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0214047   -0.1269324    0.1502164
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.1043474   -0.2139332   -0.0046543
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.1003135   -0.0302572    0.2143361
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0105626   -0.0166411    0.0370385
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0024814   -0.0889946    0.0862733
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0148104   -0.0614051    0.0855531
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0161244   -0.0259894    0.0565096
