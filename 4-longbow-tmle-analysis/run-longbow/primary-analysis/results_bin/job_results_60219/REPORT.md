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
0-24 months   JiVitA-3         BANGLADESH                     [20-30)                0    10693   27216
0-24 months   JiVitA-3         BANGLADESH                     [20-30)                1     2008   27216
0-24 months   JiVitA-3         BANGLADESH                     <20                    0     9578   27216
0-24 months   JiVitA-3         BANGLADESH                     <20                    1     2607   27216
0-24 months   JiVitA-3         BANGLADESH                     >=30                   0     1927   27216
0-24 months   JiVitA-3         BANGLADESH                     >=30                   1      403   27216
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
0-6 months    JiVitA-3         BANGLADESH                     [20-30)                0    11166   27150
0-6 months    JiVitA-3         BANGLADESH                     [20-30)                1     1512   27150
0-6 months    JiVitA-3         BANGLADESH                     <20                    0     9990   27150
0-6 months    JiVitA-3         BANGLADESH                     <20                    1     2155   27150
0-6 months    JiVitA-3         BANGLADESH                     >=30                   0     1994   27150
0-6 months    JiVitA-3         BANGLADESH                     >=30                   1      333   27150
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
![](/tmp/2219310e-5e8f-4f7a-8024-2ec382cd7e6a/1c08ef8a-95e5-45cd-a181-72e6a2913451/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2219310e-5e8f-4f7a-8024-2ec382cd7e6a/1c08ef8a-95e5-45cd-a181-72e6a2913451/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2219310e-5e8f-4f7a-8024-2ec382cd7e6a/1c08ef8a-95e5-45cd-a181-72e6a2913451/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2219310e-5e8f-4f7a-8024-2ec382cd7e6a/1c08ef8a-95e5-45cd-a181-72e6a2913451/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6416151   0.5868354   0.6963947
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6282130   0.4670962   0.7893297
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6052979   0.4511896   0.7594063
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.4592571   0.4202510   0.4982632
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.4679768   0.3888422   0.5471114
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.4519440   0.4068362   0.4970517
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.1362743   0.1248777   0.1476710
0-24 months   COHORTS          INDIA                          <20                  NA                0.1268041   0.0954111   0.1581971
0-24 months   COHORTS          INDIA                          >=30                 NA                0.1378554   0.1192079   0.1565029
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.3348871   0.3133696   0.3564046
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.3641936   0.3163905   0.4119968
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.3948142   0.3635355   0.4260929
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.2202847   0.1813987   0.2591708
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.2981424   0.2204712   0.3758136
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.2450504   0.1675465   0.3225542
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.1771429   0.1204762   0.2338095
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.1914894   0.0787986   0.3041802
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.2203390   0.1143905   0.3262875
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0888243   0.0672950   0.1103536
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1329701   0.0919788   0.1739614
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1155246   0.0840959   0.1469534
0-24 months   IRC              INDIA                          [20-30)              NA                0.2441860   0.1987326   0.2896395
0-24 months   IRC              INDIA                          <20                  NA                0.3243243   0.1733036   0.4753450
0-24 months   IRC              INDIA                          >=30                 NA                0.2068966   0.0592848   0.3545083
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.1619430   0.1543665   0.1695195
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.2099076   0.2012950   0.2185202
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.1739585   0.1562637   0.1916533
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1889320   0.1683379   0.2095261
0-24 months   Keneba           GAMBIA                         <20                  NA                0.1932188   0.1513594   0.2350782
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.2505661   0.2240579   0.2770743
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.1967458   0.1560166   0.2374750
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.1473877   0.0828807   0.2118947
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.2315068   0.1728724   0.2901413
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1923077   0.1349417   0.2496737
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2162162   0.0833207   0.3491118
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3260870   0.1903623   0.4618116
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.2040426   0.1396286   0.2684566
0-24 months   MAL-ED           PERU                           <20                  NA                0.2499618   0.1556014   0.3443223
0-24 months   MAL-ED           PERU                           >=30                 NA                0.1606751   0.0701390   0.2512112
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.2484472   0.1815936   0.3153008
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.1875000   0.0769058   0.2980942
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.2285714   0.1481253   0.3090175
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5285714   0.4457249   0.6114179
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.5625000   0.3189609   0.8060391
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5094340   0.4140845   0.6047834
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.3280792   0.2834832   0.3726751
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.2448660   0.1465685   0.3431636
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.3013705   0.2252773   0.3774636
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1211071   0.0923669   0.1498472
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1574596   0.0941227   0.2207965
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.1164609   0.0586996   0.1742221
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0281869   0.0209353   0.0354384
0-24 months   PROBIT           BELARUS                        <20                  NA                0.0369227   0.0217228   0.0521225
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.0230108   0.0140848   0.0319368
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1333324   0.1030594   0.1636054
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.1883458   0.0991187   0.2775728
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1389097   0.0722066   0.2056128
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.3351189   0.2971309   0.3731069
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.3133165   0.2631735   0.3634594
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.3209781   0.2596328   0.3823234
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4676330   0.4105404   0.5247257
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.4118832   0.2564273   0.5673391
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.5022452   0.3991096   0.6053809
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1020468   0.0870521   0.1170416
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1277358   0.0779162   0.1775553
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0891975   0.0669315   0.1114636
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1636738   0.1558609   0.1714867
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.1873641   0.1695053   0.2052229
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1654247   0.1484314   0.1824180
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2431309   0.1936851   0.2925766
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.2916294   0.1305730   0.4526857
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2463063   0.1186290   0.3739836
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.0821617   0.0588253   0.1054981
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.0753251   0.0333795   0.1172707
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.1335286   0.1006247   0.1664326
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.0512663   0.0437208   0.0588117
0-6 months    COHORTS          INDIA                          <20                  NA                0.0511421   0.0287268   0.0735575
0-6 months    COHORTS          INDIA                          >=30                 NA                0.0411969   0.0301978   0.0521960
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0511804   0.0411194   0.0612414
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0721831   0.0458751   0.0984912
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0773352   0.0595316   0.0951389
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.0581655   0.0364522   0.0798788
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.1677852   0.1077424   0.2278280
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.0882353   0.0331517   0.1433188
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0792683   0.0378429   0.1206937
0-6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.1086957   0.0185775   0.1988138
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.1111111   0.0271307   0.1950915
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.1225085   0.1156201   0.1293970
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.1747080   0.1668029   0.1826131
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.1418864   0.1249625   0.1588103
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.1143755   0.0955189   0.1332322
0-6 months    Keneba           GAMBIA                         <20                  NA                0.1100957   0.0765466   0.1436448
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.1188511   0.0972534   0.1404489
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
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0106201   0.0067458   0.0144944
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0194111   0.0085231   0.0302992
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0102870   0.0054703   0.0151036
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.1509704   0.1317237   0.1702171
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.1409391   0.1106913   0.1711869
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.1307454   0.1014421   0.1600488
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1072664   0.0715462   0.1429867
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.1388889   0.0257836   0.2519941
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.1538462   0.0796267   0.2280656
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0416497   0.0317276   0.0515718
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0746740   0.0337715   0.1155764
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0385398   0.0237138   0.0533657
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0877488   0.0818774   0.0936203
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.1032144   0.0886648   0.1177639
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0912988   0.0776235   0.1049740


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
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1843768   0.1787788   0.1899748
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
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1473297   0.1422794   0.1523799
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
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9791119   0.7470362   1.283285
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9433973   0.7210093   1.234379
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.0189866   0.8440328   1.230205
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9840762   0.8648526   1.119735
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           0.9305061   0.7168443   1.207852
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0116023   0.8638643   1.184606
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0875117   0.9410310   1.256793
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1789471   1.0669703   1.302676
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.3534410   0.9880688   1.853922
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1124256   0.7743882   1.598024
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.0809883   0.5532505   2.112128
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2438491   0.6981512   2.216082
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4970009   1.0403986   2.153993
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.3005968   0.9710361   1.742007
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          <20                  [20-30)           1.3281853   0.8043984   2.193038
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.8472906   0.4053311   1.771148
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2961820   1.2226895   1.374092
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0741958   0.9633604   1.197783
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0226895   0.8024708   1.303342
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.3262234   1.1403395   1.542408
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.7491275   0.4638023   1.209981
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.1766799   0.8517162   1.625630
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.1243243   0.5677789   2.226404
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.6956522   1.0161160   2.829634
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.2250473   0.7501735   2.000525
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           0.7874584   0.4140068   1.497779
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.7546875   0.3946455   1.443202
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9200000   0.5907199   1.432828
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0641892   0.6714992   1.686523
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9637940   0.7550247   1.230289
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.7463627   0.4893804   1.138291
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9185907   0.6919531   1.219460
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.3001687   0.8163129   2.070822
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9616356   0.5560415   1.663083
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.3099247   0.9627298   1.782331
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.8163663   0.5944776   1.121075
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.4126032   0.8365640   2.385290
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0418302   0.6128462   1.771097
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9349412   0.7297110   1.197892
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9578038   0.7893607   1.162191
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.8807830   0.5939604   1.306112
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0740157   0.8471223   1.361680
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.2517364   0.8253571   1.898383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8740843   0.6545536   1.167243
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1447411   1.0292491   1.273193
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0106977   0.9027528   1.131550
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.1994748   0.6659471   2.160442
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0130606   0.5808176   1.766978
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           0.9167910   0.4909411   1.712030
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.6251927   1.1173631   2.363825
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           0.9975788   0.6282804   1.583948
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.8035876   0.5926426   1.089616
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.4103670   0.9331887   2.131546
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.5110333   1.1176757   2.042830
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           2.8846154   1.7199071   4.838055
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5169683   0.7329594   3.139591
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.3712375   0.5146161   3.653776
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.4017094   0.5592228   3.513428
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.4260881   1.3333770   1.525246
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1581757   1.0175139   1.318283
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           0.9625810   0.6805070   1.361576
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.0391307   0.8132966   1.327674
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
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           1.8277729   0.9468407   3.528317
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9686318   0.5878761   1.595995
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.9335545   0.7637079   1.141174
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           0.8660335   0.7378887   1.016433
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.2948029   0.5371625   3.121056
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.4342432   0.7980688   2.577539
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.7929037   0.9870753   3.256594
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9253307   0.5885530   1.454817
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1762478   1.0064590   1.374680
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0404556   0.8831250   1.225815


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0062263   -0.0317366   0.0192840
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0047135   -0.0235918   0.0330188
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0007481   -0.0061018   0.0075980
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0212280    0.0075849   0.0348710
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0218356   -0.0029295   0.0466007
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0114692   -0.0247400   0.0476784
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0143852    0.0019201   0.0268504
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0045944   -0.0142326   0.0234215
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0224338    0.0169280   0.0279396
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0261781    0.0108794   0.0414769
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0047467   -0.0223780   0.0318714
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0265602   -0.0089121   0.0620326
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0071785   -0.0380334   0.0523904
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0159631   -0.0615271   0.0296008
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0056707   -0.0622418   0.0509005
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0154795   -0.0396136   0.0086547
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0094998   -0.0083057   0.0273053
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0005488   -0.0023743   0.0012767
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0023819   -0.0145660   0.0193298
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0043948   -0.0174972   0.0087076
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0132282   -0.0181793   0.0446357
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0027202   -0.0112534   0.0058129
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0043468   -0.0005437   0.0092372
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0041517   -0.0188175   0.0271210
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0186632    0.0005183   0.0368082
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0029703   -0.0073231   0.0013826
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0112788    0.0039731   0.0185844
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0277943    0.0104552   0.0451335
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0116408   -0.0164860   0.0397676
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0248211    0.0197403   0.0299020
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0018750   -0.0120530   0.0158030
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0143014   -0.0227196   0.0513225
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0070222   -0.0382348   0.0241904
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0040515   -0.0122133   0.0203163
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0113980   -0.0020788   0.0248748
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0003318   -0.0011371   0.0018007
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0012972   -0.0049131   0.0023187
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0129259   -0.0090278   0.0348795
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0017004   -0.0042384   0.0076393
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0035689   -0.0000578   0.0071955


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0097992   -0.0507779   0.0295813
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0101590   -0.0527769   0.0693326
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0054596   -0.0458031   0.0542096
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0596099    0.0204703   0.0971856
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0901849   -0.0178912   0.1867859
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0608086   -0.1518042   0.2341750
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.1393789    0.0117183   0.2505490
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0184679   -0.0601792   0.0912807
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.1216738    0.0913258   0.1510082
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1216964    0.0478029   0.1898556
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0235578   -0.1208343   0.1493485
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.1213528   -0.0551853   0.2683551
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0339858   -0.2057604   0.2260623
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0686633   -0.2835665   0.1102594
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0108446   -0.1250434   0.0917622
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0495186   -0.1295546   0.0248464
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0727359   -0.0736651   0.1991741
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0198570   -0.0895884   0.0454117
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0175509   -0.1155946   0.1348055
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0132885   -0.0529456   0.0248751
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0275094   -0.0400848   0.0907107
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0273869   -0.1169319   0.0549793
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0258704   -0.0036729   0.0545440
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0167895   -0.0806291   0.1054257
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.1851052   -0.0134249   0.3447432
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0615012   -0.1553305   0.0247079
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.1805782    0.0577187   0.2874186
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.3233408    0.1066395   0.4874771
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1280488   -0.2387775   0.3862506
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.1684733    0.1332118   0.2023003
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0161289   -0.1112958   0.1289427
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.1140351   -0.2342485   0.3640391
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0760334   -0.4719807   0.2134082
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0430557   -0.1460825   0.2009803
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.1838229   -0.0582042   0.3704948
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0302981   -0.1142591   0.1561014
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0086669   -0.0331466   0.0152328
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1075433   -0.0931481   0.2713896
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0392257   -0.1079087   0.1668201
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0390818   -0.0014323   0.0779568
