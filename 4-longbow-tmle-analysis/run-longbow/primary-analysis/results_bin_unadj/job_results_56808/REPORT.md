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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        mage       ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  --------  --------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)                0      106     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)                1      190     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                    0       13     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                    1       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                   0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                   1       26     373
0-24 months   COHORTS          GUATEMALA                      [20-30)                0      354    1360
0-24 months   COHORTS          GUATEMALA                      [20-30)                1      307    1360
0-24 months   COHORTS          GUATEMALA                      <20                    0      111    1360
0-24 months   COHORTS          GUATEMALA                      <20                    1       91    1360
0-24 months   COHORTS          GUATEMALA                      >=30                   0      264    1360
0-24 months   COHORTS          GUATEMALA                      >=30                   1      233    1360
0-24 months   COHORTS          INDIA                          [20-30)                0     3140    5313
0-24 months   COHORTS          INDIA                          [20-30)                1      462    5313
0-24 months   COHORTS          INDIA                          <20                    0      368    5313
0-24 months   COHORTS          INDIA                          <20                    1       59    5313
0-24 months   COHORTS          INDIA                          >=30                   0     1077    5313
0-24 months   COHORTS          INDIA                          >=30                   1      207    5313
0-24 months   COHORTS          PHILIPPINES                    [20-30)                0     1230    3058
0-24 months   COHORTS          PHILIPPINES                    [20-30)                1      597    3058
0-24 months   COHORTS          PHILIPPINES                    <20                    0      231    3058
0-24 months   COHORTS          PHILIPPINES                    <20                    1      147    3058
0-24 months   COHORTS          PHILIPPINES                    >=30                   0      508    3058
0-24 months   COHORTS          PHILIPPINES                    >=30                   1      345    3058
0-24 months   EE               PAKISTAN                       [20-30)                0       65     377
0-24 months   EE               PAKISTAN                       [20-30)                1       97     377
0-24 months   EE               PAKISTAN                       <20                    0        0     377
0-24 months   EE               PAKISTAN                       <20                    1        1     377
0-24 months   EE               PAKISTAN                       >=30                   0       85     377
0-24 months   EE               PAKISTAN                       >=30                   1      129     377
0-24 months   GMS-Nepal        NEPAL                          [20-30)                0      349     698
0-24 months   GMS-Nepal        NEPAL                          [20-30)                1       98     698
0-24 months   GMS-Nepal        NEPAL                          <20                    0      107     698
0-24 months   GMS-Nepal        NEPAL                          <20                    1       42     698
0-24 months   GMS-Nepal        NEPAL                          >=30                   0       73     698
0-24 months   GMS-Nepal        NEPAL                          >=30                   1       29     698
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)                0      144     281
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)                1       31     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                    0       38     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                    1        9     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                   0       46     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                   1       13     281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)                0     1585    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)                1      158    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                    0      345    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                    1       58    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                   0      920    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                   1      112    3178
0-24 months   IRC              INDIA                          [20-30)                0      260     410
0-24 months   IRC              INDIA                          [20-30)                1       84     410
0-24 months   IRC              INDIA                          <20                    0       25     410
0-24 months   IRC              INDIA                          <20                    1       12     410
0-24 months   IRC              INDIA                          >=30                   0       23     410
0-24 months   IRC              INDIA                          >=30                   1        6     410
0-24 months   Keneba           GAMBIA                         [20-30)                0     1170    2859
0-24 months   Keneba           GAMBIA                         [20-30)                1      267    2859
0-24 months   Keneba           GAMBIA                         <20                    0      319    2859
0-24 months   Keneba           GAMBIA                         <20                    1       76    2859
0-24 months   Keneba           GAMBIA                         >=30                   0      755    2859
0-24 months   Keneba           GAMBIA                         >=30                   1      272    2859
0-24 months   LCNI-5           MALAWI                         [20-30)                0      292     670
0-24 months   LCNI-5           MALAWI                         [20-30)                1       72     670
0-24 months   LCNI-5           MALAWI                         <20                    0       92     670
0-24 months   LCNI-5           MALAWI                         <20                    1       16     670
0-24 months   LCNI-5           MALAWI                         >=30                   0      151     670
0-24 months   LCNI-5           MALAWI                         >=30                   1       47     670
0-24 months   MAL-ED           BANGLADESH                     [20-30)                0      147     265
0-24 months   MAL-ED           BANGLADESH                     [20-30)                1       35     265
0-24 months   MAL-ED           BANGLADESH                     <20                    0       29     265
0-24 months   MAL-ED           BANGLADESH                     <20                    1        8     265
0-24 months   MAL-ED           BANGLADESH                     >=30                   0       31     265
0-24 months   MAL-ED           BANGLADESH                     >=30                   1       15     265
0-24 months   MAL-ED           BRAZIL                         [20-30)                0      124     233
0-24 months   MAL-ED           BRAZIL                         [20-30)                1       15     233
0-24 months   MAL-ED           BRAZIL                         <20                    0       39     233
0-24 months   MAL-ED           BRAZIL                         <20                    1        4     233
0-24 months   MAL-ED           BRAZIL                         >=30                   0       48     233
0-24 months   MAL-ED           BRAZIL                         >=30                   1        3     233
0-24 months   MAL-ED           INDIA                          [20-30)                0      148     249
0-24 months   MAL-ED           INDIA                          [20-30)                1       46     249
0-24 months   MAL-ED           INDIA                          <20                    0       25     249
0-24 months   MAL-ED           INDIA                          <20                    1        9     249
0-24 months   MAL-ED           INDIA                          >=30                   0       19     249
0-24 months   MAL-ED           INDIA                          >=30                   1        2     249
0-24 months   MAL-ED           NEPAL                          [20-30)                0      173     240
0-24 months   MAL-ED           NEPAL                          [20-30)                1       16     240
0-24 months   MAL-ED           NEPAL                          <20                    0        3     240
0-24 months   MAL-ED           NEPAL                          <20                    1        2     240
0-24 months   MAL-ED           NEPAL                          >=30                   0       43     240
0-24 months   MAL-ED           NEPAL                          >=30                   1        3     240
0-24 months   MAL-ED           PERU                           [20-30)                0      121     303
0-24 months   MAL-ED           PERU                           [20-30)                1       32     303
0-24 months   MAL-ED           PERU                           <20                    0       62     303
0-24 months   MAL-ED           PERU                           <20                    1       21     303
0-24 months   MAL-ED           PERU                           >=30                   0       56     303
0-24 months   MAL-ED           PERU                           >=30                   1       11     303
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)                0      121     314
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)                1       40     314
0-24 months   MAL-ED           SOUTH AFRICA                   <20                    0       39     314
0-24 months   MAL-ED           SOUTH AFRICA                   <20                    1        9     314
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                   0       81     314
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                   1       24     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                0       66     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                1       74     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    0        7     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    1        9     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   0       52     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   1       54     262
0-24 months   NIH-Birth        BANGLADESH                     [20-30)                0      284     627
0-24 months   NIH-Birth        BANGLADESH                     [20-30)                1      138     627
0-24 months   NIH-Birth        BANGLADESH                     <20                    0       55     627
0-24 months   NIH-Birth        BANGLADESH                     <20                    1       18     627
0-24 months   NIH-Birth        BANGLADESH                     >=30                   0       92     627
0-24 months   NIH-Birth        BANGLADESH                     >=30                   1       40     627
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)                0      434     758
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)                1       60     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                    0      113     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                    1       23     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                   0      112     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                   1       16     758
0-24 months   PROBIT           BELARUS                        [20-30)                0    11797   16897
0-24 months   PROBIT           BELARUS                        [20-30)                1      332   16897
0-24 months   PROBIT           BELARUS                        <20                    0     1678   16897
0-24 months   PROBIT           BELARUS                        <20                    1       67   16897
0-24 months   PROBIT           BELARUS                        >=30                   0     2955   16897
0-24 months   PROBIT           BELARUS                        >=30                   1       68   16897
0-24 months   PROVIDE          BANGLADESH                     [20-30)                0      428     700
0-24 months   PROVIDE          BANGLADESH                     [20-30)                1       65     700
0-24 months   PROVIDE          BANGLADESH                     <20                    0       71     700
0-24 months   PROVIDE          BANGLADESH                     <20                    1       14     700
0-24 months   PROVIDE          BANGLADESH                     >=30                   0      106     700
0-24 months   PROVIDE          BANGLADESH                     >=30                   1       16     700
0-24 months   SAS-CompFeed     INDIA                          [20-30)                0      784    1533
0-24 months   SAS-CompFeed     INDIA                          [20-30)                1      383    1533
0-24 months   SAS-CompFeed     INDIA                          <20                    0      134    1533
0-24 months   SAS-CompFeed     INDIA                          <20                    1       59    1533
0-24 months   SAS-CompFeed     INDIA                          >=30                   0      108    1533
0-24 months   SAS-CompFeed     INDIA                          >=30                   1       65    1533
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)                0      153     418
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)                1      137     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                    0       19     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                    1       17     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                   0       45     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                   1       47     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1411    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1      160    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      147    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       20    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      582    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       56    2376
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)                0     7915   14034
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)                1     1519   14034
0-24 months   ZVITAMBO         ZIMBABWE                       <20                    0     1815   14034
0-24 months   ZVITAMBO         ZIMBABWE                       <20                    1      428   14034
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                   0     1946   14034
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                   1      411   14034
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)                0      221     368
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)                1       71     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                    0       24     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                    1       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                   0       32     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                   1       10     368
0-6 months    COHORTS          GUATEMALA                      [20-30)                0      487    1091
0-6 months    COHORTS          GUATEMALA                      [20-30)                1       44    1091
0-6 months    COHORTS          GUATEMALA                      <20                    0      138    1091
0-6 months    COHORTS          GUATEMALA                      <20                    1       11    1091
0-6 months    COHORTS          GUATEMALA                      >=30                   0      356    1091
0-6 months    COHORTS          GUATEMALA                      >=30                   1       55    1091
0-6 months    COHORTS          INDIA                          [20-30)                0     3314    5135
0-6 months    COHORTS          INDIA                          [20-30)                1      169    5135
0-6 months    COHORTS          INDIA                          <20                    0      381    5135
0-6 months    COHORTS          INDIA                          <20                    1       22    5135
0-6 months    COHORTS          INDIA                          >=30                   0     1192    5135
0-6 months    COHORTS          INDIA                          >=30                   1       57    5135
0-6 months    COHORTS          PHILIPPINES                    [20-30)                0     1735    3058
0-6 months    COHORTS          PHILIPPINES                    [20-30)                1       92    3058
0-6 months    COHORTS          PHILIPPINES                    <20                    0      347    3058
0-6 months    COHORTS          PHILIPPINES                    <20                    1       31    3058
0-6 months    COHORTS          PHILIPPINES                    >=30                   0      785    3058
0-6 months    COHORTS          PHILIPPINES                    >=30                   1       68    3058
0-6 months    EE               PAKISTAN                       [20-30)                0       94     377
0-6 months    EE               PAKISTAN                       [20-30)                1       68     377
0-6 months    EE               PAKISTAN                       <20                    0        0     377
0-6 months    EE               PAKISTAN                       <20                    1        1     377
0-6 months    EE               PAKISTAN                       >=30                   0      123     377
0-6 months    EE               PAKISTAN                       >=30                   1       91     377
0-6 months    GMS-Nepal        NEPAL                          [20-30)                0      421     698
0-6 months    GMS-Nepal        NEPAL                          [20-30)                1       26     698
0-6 months    GMS-Nepal        NEPAL                          <20                    0      124     698
0-6 months    GMS-Nepal        NEPAL                          <20                    1       25     698
0-6 months    GMS-Nepal        NEPAL                          >=30                   0       93     698
0-6 months    GMS-Nepal        NEPAL                          >=30                   1        9     698
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)                0      151     264
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)                1       13     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                    0       41     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                    1        5     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                   0       48     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                   1        6     264
0-6 months    IRC              INDIA                          [20-30)                0      294     410
0-6 months    IRC              INDIA                          [20-30)                1       50     410
0-6 months    IRC              INDIA                          <20                    0       28     410
0-6 months    IRC              INDIA                          <20                    1        9     410
0-6 months    IRC              INDIA                          >=30                   0       26     410
0-6 months    IRC              INDIA                          >=30                   1        3     410
0-6 months    Keneba           GAMBIA                         [20-30)                0     1040    2443
0-6 months    Keneba           GAMBIA                         [20-30)                1      132    2443
0-6 months    Keneba           GAMBIA                         <20                    0      317    2443
0-6 months    Keneba           GAMBIA                         <20                    1       42    2443
0-6 months    Keneba           GAMBIA                         >=30                   0      802    2443
0-6 months    Keneba           GAMBIA                         >=30                   1      110    2443
0-6 months    LCNI-5           MALAWI                         [20-30)                0      109     220
0-6 months    LCNI-5           MALAWI                         [20-30)                1        7     220
0-6 months    LCNI-5           MALAWI                         <20                    0       37     220
0-6 months    LCNI-5           MALAWI                         <20                    1        2     220
0-6 months    LCNI-5           MALAWI                         >=30                   0       61     220
0-6 months    LCNI-5           MALAWI                         >=30                   1        4     220
0-6 months    MAL-ED           BANGLADESH                     [20-30)                0      170     265
0-6 months    MAL-ED           BANGLADESH                     [20-30)                1       12     265
0-6 months    MAL-ED           BANGLADESH                     <20                    0       33     265
0-6 months    MAL-ED           BANGLADESH                     <20                    1        4     265
0-6 months    MAL-ED           BANGLADESH                     >=30                   0       41     265
0-6 months    MAL-ED           BANGLADESH                     >=30                   1        5     265
0-6 months    MAL-ED           BRAZIL                         [20-30)                0      128     233
0-6 months    MAL-ED           BRAZIL                         [20-30)                1       11     233
0-6 months    MAL-ED           BRAZIL                         <20                    0       40     233
0-6 months    MAL-ED           BRAZIL                         <20                    1        3     233
0-6 months    MAL-ED           BRAZIL                         >=30                   0       48     233
0-6 months    MAL-ED           BRAZIL                         >=30                   1        3     233
0-6 months    MAL-ED           INDIA                          [20-30)                0      179     249
0-6 months    MAL-ED           INDIA                          [20-30)                1       15     249
0-6 months    MAL-ED           INDIA                          <20                    0       30     249
0-6 months    MAL-ED           INDIA                          <20                    1        4     249
0-6 months    MAL-ED           INDIA                          >=30                   0       21     249
0-6 months    MAL-ED           INDIA                          >=30                   1        0     249
0-6 months    MAL-ED           NEPAL                          [20-30)                0      181     240
0-6 months    MAL-ED           NEPAL                          [20-30)                1        8     240
0-6 months    MAL-ED           NEPAL                          <20                    0        4     240
0-6 months    MAL-ED           NEPAL                          <20                    1        1     240
0-6 months    MAL-ED           NEPAL                          >=30                   0       45     240
0-6 months    MAL-ED           NEPAL                          >=30                   1        1     240
0-6 months    MAL-ED           PERU                           [20-30)                0      136     303
0-6 months    MAL-ED           PERU                           [20-30)                1       17     303
0-6 months    MAL-ED           PERU                           <20                    0       71     303
0-6 months    MAL-ED           PERU                           <20                    1       12     303
0-6 months    MAL-ED           PERU                           >=30                   0       58     303
0-6 months    MAL-ED           PERU                           >=30                   1        9     303
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)                0      145     314
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)                1       16     314
0-6 months    MAL-ED           SOUTH AFRICA                   <20                    0       43     314
0-6 months    MAL-ED           SOUTH AFRICA                   <20                    1        5     314
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                   0       97     314
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                   1        8     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                0      119     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)                1       21     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    0       14     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                    1        2     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   0       91     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                   1       15     262
0-6 months    NIH-Birth        BANGLADESH                     [20-30)                0      384     627
0-6 months    NIH-Birth        BANGLADESH                     [20-30)                1       38     627
0-6 months    NIH-Birth        BANGLADESH                     <20                    0       67     627
0-6 months    NIH-Birth        BANGLADESH                     <20                    1        6     627
0-6 months    NIH-Birth        BANGLADESH                     >=30                   0      117     627
0-6 months    NIH-Birth        BANGLADESH                     >=30                   1       15     627
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)                0      469     758
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)                1       25     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                    0      123     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                    1       13     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                   0      119     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                   1        9     758
0-6 months    PROBIT           BELARUS                        [20-30)                0    12000   16892
0-6 months    PROBIT           BELARUS                        [20-30)                1      127   16892
0-6 months    PROBIT           BELARUS                        <20                    0     1714   16892
0-6 months    PROBIT           BELARUS                        <20                    1       30   16892
0-6 months    PROBIT           BELARUS                        >=30                   0     2993   16892
0-6 months    PROBIT           BELARUS                        >=30                   1       28   16892
0-6 months    PROVIDE          BANGLADESH                     [20-30)                0      474     700
0-6 months    PROVIDE          BANGLADESH                     [20-30)                1       19     700
0-6 months    PROVIDE          BANGLADESH                     <20                    0       81     700
0-6 months    PROVIDE          BANGLADESH                     <20                    1        4     700
0-6 months    PROVIDE          BANGLADESH                     >=30                   0      114     700
0-6 months    PROVIDE          BANGLADESH                     >=30                   1        8     700
0-6 months    SAS-CompFeed     INDIA                          [20-30)                0      990    1530
0-6 months    SAS-CompFeed     INDIA                          [20-30)                1      174    1530
0-6 months    SAS-CompFeed     INDIA                          <20                    0      165    1530
0-6 months    SAS-CompFeed     INDIA                          <20                    1       28    1530
0-6 months    SAS-CompFeed     INDIA                          >=30                   0      146    1530
0-6 months    SAS-CompFeed     INDIA                          >=30                   1       27    1530
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)                0      258     416
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)                1       31     416
0-6 months    SAS-FoodSuppl    INDIA                          <20                    0       31     416
0-6 months    SAS-FoodSuppl    INDIA                          <20                    1        5     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30                   0       77     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30                   1       14     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                0     1505    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)                1       66    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    0      154    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                    1       13    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   0      614    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                   1       24    2376
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)                0     8598   14017
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)                1      826   14017
0-6 months    ZVITAMBO         ZIMBABWE                       <20                    0     2006   14017
0-6 months    ZVITAMBO         ZIMBABWE                       <20                    1      233   14017
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                   0     2133   14017
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                   1      221   14017


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/5ebf1ba4-82c5-45d9-a66f-f55dd4d14536/eea151ae-147b-4c22-b601-2e4c9db9c668/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ebf1ba4-82c5-45d9-a66f-f55dd4d14536/eea151ae-147b-4c22-b601-2e4c9db9c668/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ebf1ba4-82c5-45d9-a66f-f55dd4d14536/eea151ae-147b-4c22-b601-2e4c9db9c668/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ebf1ba4-82c5-45d9-a66f-f55dd4d14536/eea151ae-147b-4c22-b601-2e4c9db9c668/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6418919   0.5872000   0.6965838
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540807   0.7812134
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6046512   0.4583191   0.7509832
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.4644478   0.4264134   0.5024822
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.4504950   0.3818573   0.5191328
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.4688129   0.4249241   0.5127016
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.1282621   0.1173412   0.1391830
0-24 months   COHORTS          INDIA                          <20                  NA                0.1381733   0.1054395   0.1709072
0-24 months   COHORTS          INDIA                          >=30                 NA                0.1612150   0.1410993   0.1813306
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.3267652   0.3052547   0.3482757
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.3888889   0.3397363   0.4380414
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.4044549   0.3715139   0.4373959
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.2192394   0.1808577   0.2576210
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.2818792   0.2095861   0.3541722
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.2843137   0.1967106   0.3719168
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.1771429   0.1204762   0.2338095
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.1914894   0.0787986   0.3041802
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.2203390   0.1143905   0.3262875
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0906483   0.0680420   0.1132546
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1439206   0.1019470   0.1858942
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1085271   0.0789995   0.1380547
0-24 months   IRC              INDIA                          [20-30)              NA                0.2441860   0.1987326   0.2896395
0-24 months   IRC              INDIA                          <20                  NA                0.3243243   0.1733036   0.4753450
0-24 months   IRC              INDIA                          >=30                 NA                0.2068966   0.0592848   0.3545083
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1858038   0.1656903   0.2059172
0-24 months   Keneba           GAMBIA                         <20                  NA                0.1924051   0.1535247   0.2312854
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.2648491   0.2378576   0.2918405
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.1978022   0.1568499   0.2387545
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.1481481   0.0810994   0.2151969
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.2373737   0.1780659   0.2966816
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1923077   0.1349417   0.2496737
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2162162   0.0833207   0.3491118
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3260870   0.1903623   0.4618116
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.2091503   0.1446003   0.2737004
0-24 months   MAL-ED           PERU                           <20                  NA                0.2530120   0.1593305   0.3466936
0-24 months   MAL-ED           PERU                           >=30                 NA                0.1641791   0.0753318   0.2530264
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.2484472   0.1815936   0.3153008
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.1875000   0.0769058   0.2980942
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.2285714   0.1481253   0.3090175
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5285714   0.4457249   0.6114179
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.5625000   0.3189609   0.8060391
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5094340   0.4140845   0.6047834
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.3270142   0.2822197   0.3718087
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.2465753   0.1476226   0.3455281
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.3030303   0.2245686   0.3814920
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1214575   0.0926328   0.1502822
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1691176   0.1060757   0.2321596
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.1250000   0.0676691   0.1823309
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0273724   0.0205592   0.0341856
0-24 months   PROBIT           BELARUS                        <20                  NA                0.0383954   0.0228829   0.0539079
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.0224942   0.0136347   0.0313538
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1318458   0.1019599   0.1617318
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.1647059   0.0857975   0.2436143
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1311475   0.0712055   0.1910896
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.3281919   0.2908107   0.3655732
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.3056995   0.2521472   0.3592517
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.3757225   0.3083188   0.4431263
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4724138   0.4148861   0.5299415
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.4722222   0.3089487   0.6354957
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.5108696   0.4086011   0.6131380
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1018460   0.0868871   0.1168048
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1197605   0.0705068   0.1690141
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0877743   0.0658127   0.1097359
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1610134   0.1535964   0.1684303
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.1908159   0.1745537   0.2070781
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1743742   0.1590557   0.1896927
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2431507   0.1938798   0.2924215
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.2941176   0.1407527   0.4474826
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2380952   0.1091100   0.3670805
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.0828625   0.0594042   0.1063208
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.0738255   0.0318202   0.1158308
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.1338200   0.1008900   0.1667499
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.0485214   0.0413850   0.0556578
0-6 months    COHORTS          INDIA                          <20                  NA                0.0545906   0.0324083   0.0767729
0-6 months    COHORTS          INDIA                          >=30                 NA                0.0456365   0.0340615   0.0572115
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0503558   0.0403268   0.0603847
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0820106   0.0543458   0.1096753
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0797186   0.0615390   0.0978983
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.0581655   0.0364522   0.0798788
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.1677852   0.1077424   0.2278280
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.0882353   0.0331517   0.1433188
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0792683   0.0378429   0.1206937
0-6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.1086957   0.0185775   0.1988138
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.1111111   0.0271307   0.1950915
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.1126280   0.0945250   0.1307309
0-6 months    Keneba           GAMBIA                         <20                  NA                0.1169916   0.0837372   0.1502461
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.1206140   0.0994729   0.1417552
0-6 months    MAL-ED           PERU                           [20-30)              NA                0.1111111   0.0612315   0.1609907
0-6 months    MAL-ED           PERU                           <20                  NA                0.1445783   0.0687959   0.2203608
0-6 months    MAL-ED           PERU                           >=30                 NA                0.1343284   0.0525405   0.2161162
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.0993789   0.0530933   0.1456645
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.1041667   0.0176105   0.1907229
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.0761905   0.0253643   0.1270167
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.0900474   0.0627146   0.1173801
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.0821918   0.0191362   0.1452473
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.1136364   0.0594522   0.1678205
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0506073   0.0312653   0.0699493
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.0955882   0.0461400   0.1450365
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.0703125   0.0259910   0.1146340
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0104725   0.0067588   0.0141862
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0172018   0.0088827   0.0255210
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0092685   0.0050038   0.0135331
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.1494845   0.1301043   0.1688647
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.1450777   0.1131370   0.1770185
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.1560694   0.1254920   0.1866467
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1072664   0.0715462   0.1429867
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.1388889   0.0257836   0.2519941
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.1538462   0.0796267   0.2280656
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0420115   0.0320891   0.0519338
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0778443   0.0372003   0.1184883
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0376176   0.0228504   0.0523848
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0876486   0.0819390   0.0933581
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.1040643   0.0914162   0.1167124
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0938828   0.0821000   0.1056655


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   COHORTS          INDIA                          NA                   NA                0.1370224   0.1277751   0.1462697
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1886121   0.1427907   0.2344335
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1032096   0.0833330   0.1230861
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   Keneba           GAMBIA                         NA                   NA                0.2151102   0.2000458   0.2301746
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2014925   0.1710974   0.2318877
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.2188679   0.1689910   0.2687448
0-24 months   MAL-ED           PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5229008   0.4623051   0.5834965
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3125997   0.2762869   0.3489125
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993266   0.0872975   0.1113557
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1680205   0.1618345   0.1742065
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    COHORTS          INDIA                          NA                   NA                0.0482960   0.0424316   0.0541605
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.0909091   0.0561653   0.1256529
0-6 months    Keneba           GAMBIA                         NA                   NA                0.1162505   0.1035378   0.1289632
0-6 months    MAL-ED           PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0940989   0.0712274   0.1169703
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433502   0.0351601   0.0515402
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0913177   0.0865488   0.0960866


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9622291   0.7285538   1.270853
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9419829   0.7288118   1.217505
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9699584   0.8158897   1.153121
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.0093984   0.8913436   1.143089
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.0772732   0.8375221   1.385656
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.2569183   1.0806952   1.461877
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.1901173   1.0320470   1.372398
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2377538   1.1146895   1.374405
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.2857143   0.9425102   1.753892
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2968187   0.9098560   1.848357
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.0809883   0.5532505   2.112128
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2438491   0.6981512   2.216082
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.5876810   1.1183569   2.253959
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.1972329   0.8809793   1.627015
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          <20                  [20-30)           1.3281853   0.8043984   2.193038
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.8472906   0.4053311   1.771148
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0355284   0.8233841   1.302331
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.4254237   1.2284991   1.653915
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.7489712   0.4553261   1.231991
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.2000561   0.8675219   1.660056
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.1243243   0.5677789   2.226404
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.6956522   1.0161160   2.829634
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.2097139   0.7470360   1.958952
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           0.7849813   0.4210188   1.463583
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.7546875   0.3946455   1.443202
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9200000   0.5907199   1.432828
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0641892   0.6714992   1.686523
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9637940   0.7550247   1.230289
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7540203   0.4934278   1.152238
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9266579   0.6913592   1.242039
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.3924020   0.8950513   2.166114
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0291667   0.6140610   1.724884
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.4027048   1.0798868   1.822025
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.8217840   0.6122606   1.103009
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.2492308   0.7353000   2.122368
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           0.9947037   0.5972080   1.656768
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9314655   0.7352995   1.179966
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1448256   0.9412200   1.392475
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9995945   0.6928244   1.442197
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0814027   0.8555123   1.366937
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1758982   0.7598181   1.819826
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8618339   0.6447947   1.151929
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1850934   1.0756710   1.305647
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0829798   0.9807117   1.195912
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2096106   0.6913347   2.116425
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9792086   0.5491378   1.746100
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           0.8909396   0.4718958   1.682095
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.6149635   1.1098383   2.349988
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.1250826   0.7303131   1.733244
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9405442   0.7015306   1.260990
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.6286232   1.1007567   2.409627
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.5831082   1.1695488   2.142905
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           2.8846154   1.7199071   4.838055
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5169683   0.7329594   3.139591
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3712375   0.5146161   3.653776
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4017094   0.5592228   3.513428
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.0387440   0.7493633   1.439874
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.0709064   0.8442445   1.358422
0-6 months    MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           <20                  [20-30)           1.3012048   0.6525722   2.594554
0-6 months    MAL-ED           PERU                           >=30                 [20-30)           1.2089552   0.5673887   2.575964
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.0481771   0.4043342   2.717246
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.7666667   0.3398341   1.729602
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9127614   0.3999872   2.082900
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2619617   0.7170788   2.220882
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.8888235   0.9928016   3.593522
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.3893750   0.6647702   2.903805
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           1.6425721   1.0527022   2.562969
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.8850279   0.5400518   1.450369
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.9705199   0.7714214   1.221005
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0440502   0.9257630   1.177451
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.2948029   0.5371625   3.121056
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.4342432   0.7980688   2.577539
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.8529305   1.0446839   3.286498
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8954118   0.5663146   1.415754
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1872907   1.0343536   1.362841
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0711272   0.9298879   1.233819


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0065032   -0.0317243   0.0187180
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0004772   -0.0277430   0.0267885
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0087603    0.0021981   0.0153226
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0293499    0.0152802   0.0434196
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0228810   -0.0015663   0.0473283
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0114692   -0.0247400   0.0476784
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0125613    0.0000291   0.0250934
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0045944   -0.0142326   0.0234215
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0293064    0.0143126   0.0443002
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0036903   -0.0242146   0.0315952
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0265602   -0.0089121   0.0620326
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0020708   -0.0435142   0.0476558
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0159631   -0.0615271   0.0296008
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0056707   -0.0622418   0.0509005
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0144145   -0.0393979   0.0105689
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0091494   -0.0088535   0.0271522
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0002656   -0.0016925   0.0022238
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0038684   -0.0128556   0.0205925
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0025321   -0.0096488   0.0147131
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0084475   -0.0234438   0.0403387
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0025194   -0.0110375   0.0059988
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0070072    0.0026119   0.0114024
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0041319   -0.0187459   0.0270097
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0179624   -0.0003170   0.0362418
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0002254   -0.0042543   0.0038035
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0121033    0.0047561   0.0194506
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0277943    0.0104552   0.0451335
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0116408   -0.0164860   0.0397676
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0036225   -0.0096022   0.0168472
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0143014   -0.0227196   0.0513225
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0070222   -0.0382348   0.0241904
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0040515   -0.0122133   0.0203163
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0113980   -0.0020788   0.0248748
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0004794   -0.0008975   0.0018564
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0001887   -0.0038404   0.0042177
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0129259   -0.0090278   0.0348795
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0013387   -0.0046058   0.0072832
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0036691    0.0002769   0.0070614


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0102349   -0.0507397   0.0287084
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0010286   -0.0615539   0.0560459
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0639335    0.0149393   0.1104908
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0824169    0.0420421   0.1210902
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0945025   -0.0119541   0.1897599
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0608086   -0.1518042   0.2341750
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.1217063   -0.0088893   0.2353970
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0184679   -0.0601792   0.0912807
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1362391    0.0640203   0.2028857
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0183150   -0.1304048   0.1474687
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1213528   -0.0551853   0.2683551
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0098039   -0.2313314   0.2037170
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0686633   -0.2835665   0.1102594
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0108446   -0.1250434   0.0917622
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0461118   -0.1291560   0.0308249
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0700528   -0.0780238   0.1977896
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0096110   -0.0626611   0.0769678
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0285043   -0.1027913   0.1441682
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0076563   -0.0303153   0.0442285
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0175673   -0.0510639   0.0817172
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0253644   -0.1147652   0.0568668
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0417042    0.0152133   0.0674825
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0167093   -0.0802810   0.1049916
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.1781544   -0.0218844   0.3390347
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0046667   -0.0916470   0.0753832
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.1937803    0.0702734   0.3008803
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.3233408    0.1066395   0.4874771
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1280488   -0.2387775   0.3862506
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0311614   -0.0895043   0.1384630
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.1140351   -0.2342485   0.3640391
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0760334   -0.4719807   0.2134082
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0430557   -0.1460825   0.2009803
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.1838229   -0.0582042   0.3704948
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0437759   -0.0903820   0.1614273
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0012605   -0.0260265   0.0278218
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1075433   -0.0931481   0.2713896
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0308813   -0.1162912   0.1586506
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0401798    0.0023536   0.0765719
