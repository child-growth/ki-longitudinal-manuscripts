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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        mage       ever_stunted   n_cell       n
------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0       22     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1      274     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   0        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                   1       31     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0        3     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1       40     373
0-24 months   COHORTS          GUATEMALA                      [20-30)               0      151    1360
0-24 months   COHORTS          GUATEMALA                      [20-30)               1      510    1360
0-24 months   COHORTS          GUATEMALA                      <20                   0       52    1360
0-24 months   COHORTS          GUATEMALA                      <20                   1      150    1360
0-24 months   COHORTS          GUATEMALA                      >=30                  0      118    1360
0-24 months   COHORTS          GUATEMALA                      >=30                  1      379    1360
0-24 months   COHORTS          INDIA                          [20-30)               0     2274    5313
0-24 months   COHORTS          INDIA                          [20-30)               1     1328    5313
0-24 months   COHORTS          INDIA                          <20                   0      248    5313
0-24 months   COHORTS          INDIA                          <20                   1      179    5313
0-24 months   COHORTS          INDIA                          >=30                  0      731    5313
0-24 months   COHORTS          INDIA                          >=30                  1      553    5313
0-24 months   COHORTS          PHILIPPINES                    [20-30)               0      607    3058
0-24 months   COHORTS          PHILIPPINES                    [20-30)               1     1220    3058
0-24 months   COHORTS          PHILIPPINES                    <20                   0      103    3058
0-24 months   COHORTS          PHILIPPINES                    <20                   1      275    3058
0-24 months   COHORTS          PHILIPPINES                    >=30                  0      249    3058
0-24 months   COHORTS          PHILIPPINES                    >=30                  1      604    3058
0-24 months   EE               PAKISTAN                       [20-30)               0       20     377
0-24 months   EE               PAKISTAN                       [20-30)               1      142     377
0-24 months   EE               PAKISTAN                       <20                   0        0     377
0-24 months   EE               PAKISTAN                       <20                   1        1     377
0-24 months   EE               PAKISTAN                       >=30                  0       21     377
0-24 months   EE               PAKISTAN                       >=30                  1      193     377
0-24 months   GMS-Nepal        NEPAL                          [20-30)               0      166     698
0-24 months   GMS-Nepal        NEPAL                          [20-30)               1      281     698
0-24 months   GMS-Nepal        NEPAL                          <20                   0       47     698
0-24 months   GMS-Nepal        NEPAL                          <20                   1      102     698
0-24 months   GMS-Nepal        NEPAL                          >=30                  0       39     698
0-24 months   GMS-Nepal        NEPAL                          >=30                  1       63     698
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0       80     281
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1       95     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                   0       18     281
0-24 months   Guatemala BSC    GUATEMALA                      <20                   1       29     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       27     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30                  1       32     281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178
0-24 months   IRC              INDIA                          [20-30)               0      124     410
0-24 months   IRC              INDIA                          [20-30)               1      220     410
0-24 months   IRC              INDIA                          <20                   0        8     410
0-24 months   IRC              INDIA                          <20                   1       29     410
0-24 months   IRC              INDIA                          >=30                  0       15     410
0-24 months   IRC              INDIA                          >=30                  1       14     410
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               0     6864   27216
0-24 months   JiVitA-3         BANGLADESH                     [20-30)               1     5837   27216
0-24 months   JiVitA-3         BANGLADESH                     <20                   0     5643   27216
0-24 months   JiVitA-3         BANGLADESH                     <20                   1     6542   27216
0-24 months   JiVitA-3         BANGLADESH                     >=30                  0     1229   27216
0-24 months   JiVitA-3         BANGLADESH                     >=30                  1     1101   27216
0-24 months   Keneba           GAMBIA                         [20-30)               0      732    2859
0-24 months   Keneba           GAMBIA                         [20-30)               1      705    2859
0-24 months   Keneba           GAMBIA                         <20                   0      206    2859
0-24 months   Keneba           GAMBIA                         <20                   1      189    2859
0-24 months   Keneba           GAMBIA                         >=30                  0      439    2859
0-24 months   Keneba           GAMBIA                         >=30                  1      588    2859
0-24 months   LCNI-5           MALAWI                         [20-30)               0      135     670
0-24 months   LCNI-5           MALAWI                         [20-30)               1      229     670
0-24 months   LCNI-5           MALAWI                         <20                   0       42     670
0-24 months   LCNI-5           MALAWI                         <20                   1       66     670
0-24 months   LCNI-5           MALAWI                         >=30                  0       66     670
0-24 months   LCNI-5           MALAWI                         >=30                  1      132     670
0-24 months   MAL-ED           BANGLADESH                     [20-30)               0       77     265
0-24 months   MAL-ED           BANGLADESH                     [20-30)               1      105     265
0-24 months   MAL-ED           BANGLADESH                     <20                   0        8     265
0-24 months   MAL-ED           BANGLADESH                     <20                   1       29     265
0-24 months   MAL-ED           BANGLADESH                     >=30                  0       18     265
0-24 months   MAL-ED           BANGLADESH                     >=30                  1       28     265
0-24 months   MAL-ED           BRAZIL                         [20-30)               0       99     233
0-24 months   MAL-ED           BRAZIL                         [20-30)               1       40     233
0-24 months   MAL-ED           BRAZIL                         <20                   0       32     233
0-24 months   MAL-ED           BRAZIL                         <20                   1       11     233
0-24 months   MAL-ED           BRAZIL                         >=30                  0       39     233
0-24 months   MAL-ED           BRAZIL                         >=30                  1       12     233
0-24 months   MAL-ED           INDIA                          [20-30)               0       75     249
0-24 months   MAL-ED           INDIA                          [20-30)               1      119     249
0-24 months   MAL-ED           INDIA                          <20                   0       13     249
0-24 months   MAL-ED           INDIA                          <20                   1       21     249
0-24 months   MAL-ED           INDIA                          >=30                  0       11     249
0-24 months   MAL-ED           INDIA                          >=30                  1       10     249
0-24 months   MAL-ED           NEPAL                          [20-30)               0      126     240
0-24 months   MAL-ED           NEPAL                          [20-30)               1       63     240
0-24 months   MAL-ED           NEPAL                          <20                   0        2     240
0-24 months   MAL-ED           NEPAL                          <20                   1        3     240
0-24 months   MAL-ED           NEPAL                          >=30                  0       28     240
0-24 months   MAL-ED           NEPAL                          >=30                  1       18     240
0-24 months   MAL-ED           PERU                           [20-30)               0       61     303
0-24 months   MAL-ED           PERU                           [20-30)               1       92     303
0-24 months   MAL-ED           PERU                           <20                   0       29     303
0-24 months   MAL-ED           PERU                           <20                   1       54     303
0-24 months   MAL-ED           PERU                           >=30                  0       25     303
0-24 months   MAL-ED           PERU                           >=30                  1       42     303
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0       73     314
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1       88     314
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       20     314
0-24 months   MAL-ED           SOUTH AFRICA                   <20                   1       28     314
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0       45     314
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1       60     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       21     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1      119     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0        2     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1       14     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       17     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       89     262
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               0      140     627
0-24 months   NIH-Birth        BANGLADESH                     [20-30)               1      282     627
0-24 months   NIH-Birth        BANGLADESH                     <20                   0       26     627
0-24 months   NIH-Birth        BANGLADESH                     <20                   1       47     627
0-24 months   NIH-Birth        BANGLADESH                     >=30                  0       45     627
0-24 months   NIH-Birth        BANGLADESH                     >=30                  1       87     627
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      263     758
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1      231     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                   0       72     758
0-24 months   NIH-Crypto       BANGLADESH                     <20                   1       64     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  0       61     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30                  1       67     758
0-24 months   PROBIT           BELARUS                        [20-30)               0    10591   16897
0-24 months   PROBIT           BELARUS                        [20-30)               1     1538   16897
0-24 months   PROBIT           BELARUS                        <20                   0     1460   16897
0-24 months   PROBIT           BELARUS                        <20                   1      285   16897
0-24 months   PROBIT           BELARUS                        >=30                  0     2693   16897
0-24 months   PROBIT           BELARUS                        >=30                  1      330   16897
0-24 months   PROVIDE          BANGLADESH                     [20-30)               0      284     700
0-24 months   PROVIDE          BANGLADESH                     [20-30)               1      209     700
0-24 months   PROVIDE          BANGLADESH                     <20                   0       46     700
0-24 months   PROVIDE          BANGLADESH                     <20                   1       39     700
0-24 months   PROVIDE          BANGLADESH                     >=30                  0       65     700
0-24 months   PROVIDE          BANGLADESH                     >=30                  1       57     700
0-24 months   SAS-CompFeed     INDIA                          [20-30)               0      368    1533
0-24 months   SAS-CompFeed     INDIA                          [20-30)               1      799    1533
0-24 months   SAS-CompFeed     INDIA                          <20                   0       61    1533
0-24 months   SAS-CompFeed     INDIA                          <20                   1      132    1533
0-24 months   SAS-CompFeed     INDIA                          >=30                  0       44    1533
0-24 months   SAS-CompFeed     INDIA                          >=30                  1      129    1533
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0       48     418
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1      242     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                   0        8     418
0-24 months   SAS-FoodSuppl    INDIA                          <20                   1       28     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       16     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       76     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1012    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      559    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      109    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       58    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      433    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      205    2376
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     5588   14034
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1     3846   14034
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   0     1231   14034
0-24 months   ZVITAMBO         ZIMBABWE                       <20                   1     1012   14034
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     1360   14034
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1      997   14034
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               0      139     368
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)               1      153     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   0       17     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20                   1       17     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  0       24     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                  1       18     368
0-6 months    COHORTS          GUATEMALA                      [20-30)               0      372    1091
0-6 months    COHORTS          GUATEMALA                      [20-30)               1      159    1091
0-6 months    COHORTS          GUATEMALA                      <20                   0      100    1091
0-6 months    COHORTS          GUATEMALA                      <20                   1       49    1091
0-6 months    COHORTS          GUATEMALA                      >=30                  0      264    1091
0-6 months    COHORTS          GUATEMALA                      >=30                  1      147    1091
0-6 months    COHORTS          INDIA                          [20-30)               0     2841    5135
0-6 months    COHORTS          INDIA                          [20-30)               1      642    5135
0-6 months    COHORTS          INDIA                          <20                   0      308    5135
0-6 months    COHORTS          INDIA                          <20                   1       95    5135
0-6 months    COHORTS          INDIA                          >=30                  0     1009    5135
0-6 months    COHORTS          INDIA                          >=30                  1      240    5135
0-6 months    COHORTS          PHILIPPINES                    [20-30)               0     1440    3058
0-6 months    COHORTS          PHILIPPINES                    [20-30)               1      387    3058
0-6 months    COHORTS          PHILIPPINES                    <20                   0      265    3058
0-6 months    COHORTS          PHILIPPINES                    <20                   1      113    3058
0-6 months    COHORTS          PHILIPPINES                    >=30                  0      622    3058
0-6 months    COHORTS          PHILIPPINES                    >=30                  1      231    3058
0-6 months    EE               PAKISTAN                       [20-30)               0       43     377
0-6 months    EE               PAKISTAN                       [20-30)               1      119     377
0-6 months    EE               PAKISTAN                       <20                   0        0     377
0-6 months    EE               PAKISTAN                       <20                   1        1     377
0-6 months    EE               PAKISTAN                       >=30                  0       52     377
0-6 months    EE               PAKISTAN                       >=30                  1      162     377
0-6 months    GMS-Nepal        NEPAL                          [20-30)               0      323     698
0-6 months    GMS-Nepal        NEPAL                          [20-30)               1      124     698
0-6 months    GMS-Nepal        NEPAL                          <20                   0       81     698
0-6 months    GMS-Nepal        NEPAL                          <20                   1       68     698
0-6 months    GMS-Nepal        NEPAL                          >=30                  0       72     698
0-6 months    GMS-Nepal        NEPAL                          >=30                  1       30     698
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               0      118     264
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)               1       46     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                   0       25     264
0-6 months    Guatemala BSC    GUATEMALA                      <20                   1       21     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  0       37     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30                  1       17     264
0-6 months    IRC              INDIA                          [20-30)               0      200     410
0-6 months    IRC              INDIA                          [20-30)               1      144     410
0-6 months    IRC              INDIA                          <20                   0       17     410
0-6 months    IRC              INDIA                          <20                   1       20     410
0-6 months    IRC              INDIA                          >=30                  0       19     410
0-6 months    IRC              INDIA                          >=30                  1       10     410
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               0     7952   27150
0-6 months    JiVitA-3         BANGLADESH                     [20-30)               1     4726   27150
0-6 months    JiVitA-3         BANGLADESH                     <20                   0     6583   27150
0-6 months    JiVitA-3         BANGLADESH                     <20                   1     5562   27150
0-6 months    JiVitA-3         BANGLADESH                     >=30                  0     1403   27150
0-6 months    JiVitA-3         BANGLADESH                     >=30                  1      924   27150
0-6 months    Keneba           GAMBIA                         [20-30)               0      814    2443
0-6 months    Keneba           GAMBIA                         [20-30)               1      358    2443
0-6 months    Keneba           GAMBIA                         <20                   0      252    2443
0-6 months    Keneba           GAMBIA                         <20                   1      107    2443
0-6 months    Keneba           GAMBIA                         >=30                  0      613    2443
0-6 months    Keneba           GAMBIA                         >=30                  1      299    2443
0-6 months    LCNI-5           MALAWI                         [20-30)               0       71     220
0-6 months    LCNI-5           MALAWI                         [20-30)               1       45     220
0-6 months    LCNI-5           MALAWI                         <20                   0       29     220
0-6 months    LCNI-5           MALAWI                         <20                   1       10     220
0-6 months    LCNI-5           MALAWI                         >=30                  0       42     220
0-6 months    LCNI-5           MALAWI                         >=30                  1       23     220
0-6 months    MAL-ED           BANGLADESH                     [20-30)               0      122     265
0-6 months    MAL-ED           BANGLADESH                     [20-30)               1       60     265
0-6 months    MAL-ED           BANGLADESH                     <20                   0       22     265
0-6 months    MAL-ED           BANGLADESH                     <20                   1       15     265
0-6 months    MAL-ED           BANGLADESH                     >=30                  0       26     265
0-6 months    MAL-ED           BANGLADESH                     >=30                  1       20     265
0-6 months    MAL-ED           BRAZIL                         [20-30)               0      104     233
0-6 months    MAL-ED           BRAZIL                         [20-30)               1       35     233
0-6 months    MAL-ED           BRAZIL                         <20                   0       36     233
0-6 months    MAL-ED           BRAZIL                         <20                   1        7     233
0-6 months    MAL-ED           BRAZIL                         >=30                  0       41     233
0-6 months    MAL-ED           BRAZIL                         >=30                  1       10     233
0-6 months    MAL-ED           INDIA                          [20-30)               0      126     249
0-6 months    MAL-ED           INDIA                          [20-30)               1       68     249
0-6 months    MAL-ED           INDIA                          <20                   0       20     249
0-6 months    MAL-ED           INDIA                          <20                   1       14     249
0-6 months    MAL-ED           INDIA                          >=30                  0       18     249
0-6 months    MAL-ED           INDIA                          >=30                  1        3     249
0-6 months    MAL-ED           NEPAL                          [20-30)               0      157     240
0-6 months    MAL-ED           NEPAL                          [20-30)               1       32     240
0-6 months    MAL-ED           NEPAL                          <20                   0        2     240
0-6 months    MAL-ED           NEPAL                          <20                   1        3     240
0-6 months    MAL-ED           NEPAL                          >=30                  0       38     240
0-6 months    MAL-ED           NEPAL                          >=30                  1        8     240
0-6 months    MAL-ED           PERU                           [20-30)               0       88     303
0-6 months    MAL-ED           PERU                           [20-30)               1       65     303
0-6 months    MAL-ED           PERU                           <20                   0       47     303
0-6 months    MAL-ED           PERU                           <20                   1       36     303
0-6 months    MAL-ED           PERU                           >=30                  0       39     303
0-6 months    MAL-ED           PERU                           >=30                  1       28     303
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               0      103     314
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)               1       58     314
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   0       28     314
0-6 months    MAL-ED           SOUTH AFRICA                   <20                   1       20     314
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  0       67     314
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                  1       38     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       75     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1       65     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0       11     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        5     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       67     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       39     262
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               0      264     627
0-6 months    NIH-Birth        BANGLADESH                     [20-30)               1      158     627
0-6 months    NIH-Birth        BANGLADESH                     <20                   0       56     627
0-6 months    NIH-Birth        BANGLADESH                     <20                   1       17     627
0-6 months    NIH-Birth        BANGLADESH                     >=30                  0       89     627
0-6 months    NIH-Birth        BANGLADESH                     >=30                  1       43     627
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               0      347     758
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)               1      147     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                   0       90     758
0-6 months    NIH-Crypto       BANGLADESH                     <20                   1       46     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  0       92     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30                  1       36     758
0-6 months    PROBIT           BELARUS                        [20-30)               0    11319   16892
0-6 months    PROBIT           BELARUS                        [20-30)               1      808   16892
0-6 months    PROBIT           BELARUS                        <20                   0     1577   16892
0-6 months    PROBIT           BELARUS                        <20                   1      167   16892
0-6 months    PROBIT           BELARUS                        >=30                  0     2837   16892
0-6 months    PROBIT           BELARUS                        >=30                  1      184   16892
0-6 months    PROVIDE          BANGLADESH                     [20-30)               0      379     700
0-6 months    PROVIDE          BANGLADESH                     [20-30)               1      114     700
0-6 months    PROVIDE          BANGLADESH                     <20                   0       61     700
0-6 months    PROVIDE          BANGLADESH                     <20                   1       24     700
0-6 months    PROVIDE          BANGLADESH                     >=30                  0       92     700
0-6 months    PROVIDE          BANGLADESH                     >=30                  1       30     700
0-6 months    SAS-CompFeed     INDIA                          [20-30)               0      674    1530
0-6 months    SAS-CompFeed     INDIA                          [20-30)               1      490    1530
0-6 months    SAS-CompFeed     INDIA                          <20                   0      109    1530
0-6 months    SAS-CompFeed     INDIA                          <20                   1       84    1530
0-6 months    SAS-CompFeed     INDIA                          >=30                  0       96    1530
0-6 months    SAS-CompFeed     INDIA                          >=30                  1       77    1530
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               0      171     416
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)               1      118     416
0-6 months    SAS-FoodSuppl    INDIA                          <20                   0       20     416
0-6 months    SAS-FoodSuppl    INDIA                          <20                   1       16     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  0       63     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30                  1       28     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0     1250    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      321    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0      134    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       33    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      530    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1      108    2376
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               0     7025   14017
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)               1     2399   14017
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   0     1612   14017
0-6 months    ZVITAMBO         ZIMBABWE                       <20                   1      627   14017
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  0     1753   14017
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                  1      601   14017
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               0       22     185
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)               1      121     185
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   0        3     185
6-24 months   CMC-V-BCS-2002   INDIA                          <20                   1       14     185
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  0        3     185
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                  1       22     185
6-24 months   COHORTS          GUATEMALA                      [20-30)               0       94     895
6-24 months   COHORTS          GUATEMALA                      [20-30)               1      351     895
6-24 months   COHORTS          GUATEMALA                      <20                   0       30     895
6-24 months   COHORTS          GUATEMALA                      <20                   1      101     895
6-24 months   COHORTS          GUATEMALA                      >=30                  0       87     895
6-24 months   COHORTS          GUATEMALA                      >=30                  1      232     895
6-24 months   COHORTS          INDIA                          [20-30)               0     2088    4062
6-24 months   COHORTS          INDIA                          [20-30)               1      686    4062
6-24 months   COHORTS          INDIA                          <20                   0      209    4062
6-24 months   COHORTS          INDIA                          <20                   1       84    4062
6-24 months   COHORTS          INDIA                          >=30                  0      682    4062
6-24 months   COHORTS          INDIA                          >=30                  1      313    4062
6-24 months   COHORTS          PHILIPPINES                    [20-30)               0      480    2121
6-24 months   COHORTS          PHILIPPINES                    [20-30)               1      833    2121
6-24 months   COHORTS          PHILIPPINES                    <20                   0       75    2121
6-24 months   COHORTS          PHILIPPINES                    <20                   1      162    2121
6-24 months   COHORTS          PHILIPPINES                    >=30                  0      198    2121
6-24 months   COHORTS          PHILIPPINES                    >=30                  1      373    2121
6-24 months   EE               PAKISTAN                       [20-30)               0       19      93
6-24 months   EE               PAKISTAN                       [20-30)               1       23      93
6-24 months   EE               PAKISTAN                       <20                   0        0      93
6-24 months   EE               PAKISTAN                       <20                   1        0      93
6-24 months   EE               PAKISTAN                       >=30                  0       20      93
6-24 months   EE               PAKISTAN                       >=30                  1       31      93
6-24 months   GMS-Nepal        NEPAL                          [20-30)               0      112     397
6-24 months   GMS-Nepal        NEPAL                          [20-30)               1      157     397
6-24 months   GMS-Nepal        NEPAL                          <20                   0       33     397
6-24 months   GMS-Nepal        NEPAL                          <20                   1       34     397
6-24 months   GMS-Nepal        NEPAL                          >=30                  0       28     397
6-24 months   GMS-Nepal        NEPAL                          >=30                  1       33     397
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               0       72     184
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)               1       49     184
6-24 months   Guatemala BSC    GUATEMALA                      <20                   0       15     184
6-24 months   Guatemala BSC    GUATEMALA                      <20                   1        8     184
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  0       25     184
6-24 months   Guatemala BSC    GUATEMALA                      >=30                  1       15     184
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               0     1135    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)               1      608    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   0      232    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                   1      171    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  0      679    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                  1      353    3178
6-24 months   IRC              INDIA                          [20-30)               0      124     236
6-24 months   IRC              INDIA                          [20-30)               1       76     236
6-24 months   IRC              INDIA                          <20                   0        8     236
6-24 months   IRC              INDIA                          <20                   1        9     236
6-24 months   IRC              INDIA                          >=30                  0       15     236
6-24 months   IRC              INDIA                          >=30                  1        4     236
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               0     3995   10488
6-24 months   JiVitA-3         BANGLADESH                     [20-30)               1     1111   10488
6-24 months   JiVitA-3         BANGLADESH                     <20                   0     3635   10488
6-24 months   JiVitA-3         BANGLADESH                     <20                   1      980   10488
6-24 months   JiVitA-3         BANGLADESH                     >=30                  0      590   10488
6-24 months   JiVitA-3         BANGLADESH                     >=30                  1      177   10488
6-24 months   Keneba           GAMBIA                         [20-30)               0      657    1972
6-24 months   Keneba           GAMBIA                         [20-30)               1      347    1972
6-24 months   Keneba           GAMBIA                         <20                   0      185    1972
6-24 months   Keneba           GAMBIA                         <20                   1       82    1972
6-24 months   Keneba           GAMBIA                         >=30                  0      412    1972
6-24 months   Keneba           GAMBIA                         >=30                  1      289    1972
6-24 months   LCNI-5           MALAWI                         [20-30)               0      128     581
6-24 months   LCNI-5           MALAWI                         [20-30)               1      184     581
6-24 months   LCNI-5           MALAWI                         <20                   0       40     581
6-24 months   LCNI-5           MALAWI                         <20                   1       56     581
6-24 months   LCNI-5           MALAWI                         >=30                  0       64     581
6-24 months   LCNI-5           MALAWI                         >=30                  1      109     581
6-24 months   MAL-ED           BANGLADESH                     [20-30)               0       67     158
6-24 months   MAL-ED           BANGLADESH                     [20-30)               1       45     158
6-24 months   MAL-ED           BANGLADESH                     <20                   0        7     158
6-24 months   MAL-ED           BANGLADESH                     <20                   1       14     158
6-24 months   MAL-ED           BANGLADESH                     >=30                  0       17     158
6-24 months   MAL-ED           BANGLADESH                     >=30                  1        8     158
6-24 months   MAL-ED           BRAZIL                         [20-30)               0       90     163
6-24 months   MAL-ED           BRAZIL                         [20-30)               1        5     163
6-24 months   MAL-ED           BRAZIL                         <20                   0       26     163
6-24 months   MAL-ED           BRAZIL                         <20                   1        4     163
6-24 months   MAL-ED           BRAZIL                         >=30                  0       36     163
6-24 months   MAL-ED           BRAZIL                         >=30                  1        2     163
6-24 months   MAL-ED           INDIA                          [20-30)               0       65     154
6-24 months   MAL-ED           INDIA                          [20-30)               1       51     154
6-24 months   MAL-ED           INDIA                          <20                   0       13     154
6-24 months   MAL-ED           INDIA                          <20                   1        7     154
6-24 months   MAL-ED           INDIA                          >=30                  0       11     154
6-24 months   MAL-ED           INDIA                          >=30                  1        7     154
6-24 months   MAL-ED           NEPAL                          [20-30)               0      123     194
6-24 months   MAL-ED           NEPAL                          [20-30)               1       31     194
6-24 months   MAL-ED           NEPAL                          <20                   0        2     194
6-24 months   MAL-ED           NEPAL                          <20                   1        0     194
6-24 months   MAL-ED           NEPAL                          >=30                  0       28     194
6-24 months   MAL-ED           NEPAL                          >=30                  1       10     194
6-24 months   MAL-ED           PERU                           [20-30)               0       46     149
6-24 months   MAL-ED           PERU                           [20-30)               1       27     149
6-24 months   MAL-ED           PERU                           <20                   0       24     149
6-24 months   MAL-ED           PERU                           <20                   1       18     149
6-24 months   MAL-ED           PERU                           >=30                  0       20     149
6-24 months   MAL-ED           PERU                           >=30                  1       14     149
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               0       46     158
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)               1       30     158
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   0       14     158
6-24 months   MAL-ED           SOUTH AFRICA                   <20                   1        8     158
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  0       38     158
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                  1       22     158
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               0       15     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)               1       54     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   0        0     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                   1        9     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  0       16     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                  1       50     144
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               0       95     345
6-24 months   NIH-Birth        BANGLADESH                     [20-30)               1      124     345
6-24 months   NIH-Birth        BANGLADESH                     <20                   0       16     345
6-24 months   NIH-Birth        BANGLADESH                     <20                   1       30     345
6-24 months   NIH-Birth        BANGLADESH                     >=30                  0       36     345
6-24 months   NIH-Birth        BANGLADESH                     >=30                  1       44     345
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               0      246     506
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)               1       84     506
6-24 months   NIH-Crypto       BANGLADESH                     <20                   0       70     506
6-24 months   NIH-Crypto       BANGLADESH                     <20                   1       18     506
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  0       57     506
6-24 months   NIH-Crypto       BANGLADESH                     >=30                  1       31     506
6-24 months   PROBIT           BELARUS                        [20-30)               0    10376   15467
6-24 months   PROBIT           BELARUS                        [20-30)               1      730   15467
6-24 months   PROBIT           BELARUS                        <20                   0     1433   15467
6-24 months   PROBIT           BELARUS                        <20                   1      118   15467
6-24 months   PROBIT           BELARUS                        >=30                  0     2664   15467
6-24 months   PROBIT           BELARUS                        >=30                  1      146   15467
6-24 months   PROVIDE          BANGLADESH                     [20-30)               0      235     456
6-24 months   PROVIDE          BANGLADESH                     [20-30)               1       95     456
6-24 months   PROVIDE          BANGLADESH                     <20                   0       29     456
6-24 months   PROVIDE          BANGLADESH                     <20                   1       15     456
6-24 months   PROVIDE          BANGLADESH                     >=30                  0       55     456
6-24 months   PROVIDE          BANGLADESH                     >=30                  1       27     456
6-24 months   SAS-CompFeed     INDIA                          [20-30)               0      313     813
6-24 months   SAS-CompFeed     INDIA                          [20-30)               1      309     813
6-24 months   SAS-CompFeed     INDIA                          <20                   0       55     813
6-24 months   SAS-CompFeed     INDIA                          <20                   1       48     813
6-24 months   SAS-CompFeed     INDIA                          >=30                  0       36     813
6-24 months   SAS-CompFeed     INDIA                          >=30                  1       52     813
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               0       40     243
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)               1      124     243
6-24 months   SAS-FoodSuppl    INDIA                          <20                   0        8     243
6-24 months   SAS-FoodSuppl    INDIA                          <20                   1       12     243
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  0       11     243
6-24 months   SAS-FoodSuppl    INDIA                          >=30                  1       48     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               0      783    1591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)               1      238    1591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   0       90    1591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                   1       25    1591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  0      358    1591
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                  1       97    1591
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               0     4259    8476
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)               1     1447    8476
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   0      900    8476
6-24 months   ZVITAMBO         ZIMBABWE                       <20                   1      385    8476
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  0     1089    8476
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                  1      396    8476


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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/326321e8-43a7-4011-9f01-b81bb12e1f7b/ef9d08a6-3d8d-4d56-8e7f-0fbf8b90c63c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/326321e8-43a7-4011-9f01-b81bb12e1f7b/ef9d08a6-3d8d-4d56-8e7f-0fbf8b90c63c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/326321e8-43a7-4011-9f01-b81bb12e1f7b/ef9d08a6-3d8d-4d56-8e7f-0fbf8b90c63c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/326321e8-43a7-4011-9f01-b81bb12e1f7b/ef9d08a6-3d8d-4d56-8e7f-0fbf8b90c63c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7715582   0.7395414   0.8035751
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.7425743   0.6822589   0.8028896
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7625755   0.7251529   0.7999980
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.3686841   0.3529273   0.3844409
0-24 months   COHORTS          INDIA                          <20                  NA                0.4192037   0.3723980   0.4660095
0-24 months   COHORTS          INDIA                          >=30                 NA                0.4306854   0.4035982   0.4577725
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6677614   0.6461598   0.6893629
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.7275132   0.6826215   0.7724050
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.7080891   0.6775741   0.7386041
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.6286353   0.5838119   0.6734588
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.6845638   0.6098967   0.7592308
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.6176471   0.5232710   0.7120231
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.5428571   0.4689184   0.6167959
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.6170213   0.4777984   0.7562442
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.5423729   0.4150223   0.6697235
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3488239   0.2689981   0.4286497
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.4243176   0.3714356   0.4771996
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3420543   0.3027979   0.3813106
0-24 months   IRC              INDIA                          [20-30)              NA                0.6395349   0.5887350   0.6903348
0-24 months   IRC              INDIA                          <20                  NA                0.7837838   0.6509771   0.9165904
0-24 months   IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.4595701   0.4492266   0.4699136
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.5368896   0.5266190   0.5471602
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.4725322   0.4502071   0.4948573
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.4906054   0.4647537   0.5164571
0-24 months   Keneba           GAMBIA                         <20                  NA                0.4784810   0.4292098   0.5277522
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.5725414   0.5422800   0.6028028
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.6291209   0.5794611   0.6787807
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.6111111   0.5191015   0.7031208
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.6666667   0.6009563   0.7323770
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.5769231   0.5050110   0.6488352
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.7837838   0.6508882   0.9166793
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.6086957   0.4673939   0.7499974
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                0.2877698   0.2123462   0.3631934
0-24 months   MAL-ED           BRAZIL                         <20                  NA                0.2558140   0.1251214   0.3865065
0-24 months   MAL-ED           BRAZIL                         >=30                 NA                0.2352941   0.1186267   0.3519616
0-24 months   MAL-ED           INDIA                          [20-30)              NA                0.6134021   0.5447390   0.6820652
0-24 months   MAL-ED           INDIA                          <20                  NA                0.6176471   0.4539711   0.7813230
0-24 months   MAL-ED           INDIA                          >=30                 NA                0.4761905   0.2621532   0.6902277
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.6013072   0.5235953   0.6790191
0-24 months   MAL-ED           PERU                           <20                  NA                0.6506024   0.5478612   0.7533436
0-24 months   MAL-ED           PERU                           >=30                 NA                0.6268657   0.5108682   0.7428631
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.5465839   0.4695636   0.6236041
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.5833333   0.4436409   0.7230258
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.5714286   0.4766219   0.6662352
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.6682464   0.6232877   0.7132052
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.6438356   0.5338981   0.7537732
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5781627   0.7400191
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.4676113   0.4235834   0.5116393
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.4705882   0.3866456   0.5545309
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.5234375   0.4368566   0.6100184
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.1268035   0.1108293   0.1427778
0-24 months   PROBIT           BELARUS                        <20                  NA                0.1633238   0.1340831   0.1925644
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.1091631   0.0894704   0.1288557
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.4239351   0.3802815   0.4675887
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.4588235   0.3528149   0.5648322
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.4672131   0.3786174   0.5558089
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.6846615   0.6367436   0.7325794
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.6839378   0.6407085   0.7271672
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.7456647   0.6827952   0.8085342
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.8344828   0.7916575   0.8773080
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.7777778   0.6418092   0.9137463
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.8260870   0.7485421   0.9036319
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.3558243   0.3321449   0.3795038
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3473054   0.2750796   0.4195311
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3213166   0.2850732   0.3575601
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.4076744   0.3977580   0.4175907
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.4511815   0.4305875   0.4717754
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4229953   0.4030500   0.4429407
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5239726   0.4666115   0.5813337
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.5000000   0.3317057   0.6682943
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787041   0.5784387
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.2994350   0.2604610   0.3384091
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.3288591   0.2533905   0.4043276
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.3576642   0.3113041   0.4040244
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.1843239   0.1714454   0.1972023
0-6 months    COHORTS          INDIA                          <20                  NA                0.2357320   0.1942872   0.2771768
0-6 months    COHORTS          INDIA                          >=30                 NA                0.1921537   0.1703014   0.2140061
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.2118227   0.1930836   0.2305617
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2989418   0.2527842   0.3450994
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2708089   0.2409828   0.3006350
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.2774049   0.2358703   0.3189395
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.4563758   0.3763414   0.5364103
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.2941176   0.2056293   0.3826060
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2804878   0.2116025   0.3493731
0-6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.4565217   0.3123052   0.6007383
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.3148148   0.1907048   0.4389248
0-6 months    IRC              INDIA                          [20-30)              NA                0.4186047   0.3664087   0.4708006
0-6 months    IRC              INDIA                          <20                  NA                0.5405405   0.3797668   0.7013143
0-6 months    IRC              INDIA                          >=30                 NA                0.3448276   0.1716235   0.5180317
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.3727717   0.3629172   0.3826263
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.4579662   0.4477933   0.4681392
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.3970778   0.3755221   0.4186335
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.3054608   0.2790853   0.3318362
0-6 months    Keneba           GAMBIA                         <20                  NA                0.2980501   0.2507255   0.3453748
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.3278509   0.2973782   0.3583236
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                0.3879310   0.2990548   0.4768073
0-6 months    LCNI-5           MALAWI                         <20                  NA                0.2564103   0.1190568   0.3937637
0-6 months    LCNI-5           MALAWI                         >=30                 NA                0.3538462   0.2373381   0.4703542
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.3296703   0.2612449   0.3980958
0-6 months    MAL-ED           BANGLADESH                     <20                  NA                0.4054054   0.2469075   0.5639033
0-6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.4347826   0.2912555   0.5783097
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                0.2517986   0.1794865   0.3241106
0-6 months    MAL-ED           BRAZIL                         <20                  NA                0.1627907   0.0522099   0.2733715
0-6 months    MAL-ED           BRAZIL                         >=30                 NA                0.1960784   0.0868794   0.3052774
0-6 months    MAL-ED           PERU                           [20-30)              NA                0.4248366   0.3463805   0.5032927
0-6 months    MAL-ED           PERU                           <20                  NA                0.4337349   0.3269404   0.5405295
0-6 months    MAL-ED           PERU                           >=30                 NA                0.4179104   0.2996158   0.5362051
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3602484   0.2859748   0.4345221
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.4166667   0.2769742   0.5563591
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3619048   0.2698416   0.4539679
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.4642857   0.3815156   0.5470559
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3125000   0.0849484   0.5400516
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3679245   0.2759454   0.4599037
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.3744076   0.3281954   0.4206198
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.2328767   0.1358416   0.3299118
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3257576   0.2457441   0.4057710
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2975709   0.2572279   0.3379138
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.3382353   0.2586695   0.4178011
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2812500   0.2033092   0.3591908
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0666282   0.0562076   0.0770487
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0957569   0.0711030   0.1204108
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0609070   0.0479470   0.0738669
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.2312373   0.1939930   0.2684817
0-6 months    PROVIDE          BANGLADESH                     <20                  NA                0.2823529   0.1865893   0.3781166
0-6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.2459016   0.1694348   0.3223685
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.4209622   0.3873852   0.4545392
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.4352332   0.3768914   0.4935750
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.4450867   0.3608940   0.5292794
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4083045   0.3515679   0.4650411
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.4444444   0.2819300   0.6069589
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.3076923   0.2127504   0.4026342
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2043285   0.1843858   0.2242711
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1976048   0.1371996   0.2580100
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1692790   0.1401746   0.1983834
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2545628   0.2457676   0.2633581
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.2800357   0.2614363   0.2986351
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2553101   0.2376951   0.2729251
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7887640   0.7508178   0.8267102
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.7709924   0.6989969   0.8429878
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7272727   0.6783728   0.7761727
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.2472963   0.2312391   0.2633535
6-24 months   COHORTS          INDIA                          <20                  NA                0.2866894   0.2349034   0.3384755
6-24 months   COHORTS          INDIA                          >=30                 NA                0.3145729   0.2857172   0.3434285
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6344250   0.6083697   0.6604803
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.6835443   0.6243178   0.7427708
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.6532399   0.6141933   0.6922865
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5836431   0.5246602   0.6426260
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.5074627   0.3876011   0.6273243
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.5409836   0.4157742   0.6661930
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.4049587   0.3172550   0.4926623
6-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.3478261   0.1526483   0.5430038
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.3750000   0.2245622   0.5254378
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3488239   0.2689981   0.4286497
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.4243176   0.3714356   0.4771996
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3420543   0.3027979   0.3813106
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.2175872   0.2044704   0.2307039
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.2123510   0.1992512   0.2254508
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.2307692   0.1990570   0.2624814
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.3456175   0.3161933   0.3750418
6-24 months   Keneba           GAMBIA                         <20                  NA                0.3071161   0.2517704   0.3624618
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.4122682   0.3758198   0.4487166
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.5897436   0.5351170   0.6443702
6-24 months   LCNI-5           MALAWI                         <20                  NA                0.5833333   0.4846283   0.6820384
6-24 months   LCNI-5           MALAWI                         >=30                 NA                0.6300578   0.5580539   0.7020617
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.4017857   0.3107014   0.4928700
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.6666667   0.4644062   0.8689271
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3200000   0.1365633   0.5034367
6-24 months   MAL-ED           INDIA                          [20-30)              NA                0.4396552   0.3490365   0.5302738
6-24 months   MAL-ED           INDIA                          <20                  NA                0.3500000   0.1402807   0.5597193
6-24 months   MAL-ED           INDIA                          >=30                 NA                0.3888889   0.1629457   0.6148321
6-24 months   MAL-ED           PERU                           [20-30)              NA                0.3698630   0.2587444   0.4809816
6-24 months   MAL-ED           PERU                           <20                  NA                0.4285714   0.2784031   0.5787397
6-24 months   MAL-ED           PERU                           >=30                 NA                0.4117647   0.2457789   0.5777505
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3947368   0.2844951   0.5049786
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.3636364   0.1619847   0.5652880
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3666667   0.2443451   0.4889882
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.5662100   0.5004768   0.6319433
6-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.6521739   0.5143380   0.7900098
6-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5500000   0.4408255   0.6591745
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2545455   0.2075004   0.3015905
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.2045455   0.1201850   0.2889059
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.3522727   0.2523712   0.4521742
6-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0657302   0.0530621   0.0783984
6-24 months   PROBIT           BELARUS                        <20                  NA                0.0760799   0.0552131   0.0969468
6-24 months   PROBIT           BELARUS                        >=30                 NA                0.0519573   0.0391517   0.0647629
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.2878788   0.2389742   0.3367834
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.3409091   0.2006954   0.4811228
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3292683   0.2274403   0.4310963
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.4967846   0.4461167   0.5474524
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.4660194   0.4046660   0.5273728
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.5909091   0.4991655   0.6826526
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.7560976   0.6902380   0.8219571
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.6000000   0.3848536   0.8151464
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.8135593   0.7139769   0.9131417
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2331048   0.2071621   0.2590475
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2173913   0.1419813   0.2928013
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2131868   0.1755429   0.2508307
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2535927   0.2423035   0.2648819
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.2996109   0.2745630   0.3246588
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2666667   0.2441738   0.2891596


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   COHORTS          INDIA                          NA                   NA                0.3877282   0.3746257   0.4008307
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.5551601   0.4969525   0.6133678
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3561989   0.3061990   0.4061987
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4952969   0.4874720   0.5031218
0-24 months   Keneba           GAMBIA                         NA                   NA                0.5183631   0.5000444   0.5366817
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6373134   0.6008819   0.6737450
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6113208   0.5525209   0.6701206
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2703863   0.2132328   0.3275398
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6024096   0.5415000   0.6633193
0-24 months   MAL-ED           PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6634769   0.6264616   0.7004922
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1274191   0.1115552   0.1432829
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3459596   0.3268289   0.3650903
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4172011   0.4090427   0.4253595
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    COHORTS          INDIA                          NA                   NA                0.1902629   0.1795262   0.2009996
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3181818   0.2618904   0.3744732
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4129650   0.4055288   0.4204012
0-6 months    Keneba           GAMBIA                         NA                   NA                0.3127302   0.2943427   0.3311178
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3584906   0.3006428   0.4163383
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2231760   0.1695976   0.2767543
0-6 months    MAL-ED           PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4160305   0.3562327   0.4758284
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3476874   0.3103810   0.3849938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0686124   0.0577768   0.0794479
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1944444   0.1785274   0.2103615
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2587572   0.2515068   0.2660076
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   COHORTS          INDIA                          NA                   NA                0.2666174   0.2530174   0.2802175
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.3913043   0.3205945   0.4620142
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3561989   0.3061990   0.4061987
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2162471   0.2068695   0.2256248
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3640974   0.3428547   0.3853400
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.6006885   0.5608305   0.6405464
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   MAL-ED           PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2262728   0.2057063   0.2468392
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2628598   0.2534882   0.2722315


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9624345   0.8785345   1.0543469
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9883576   0.9268372   1.0539615
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1370270   1.0089024   1.2814227
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.1681692   1.0826349   1.2604611
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0894809   1.0161593   1.1680930
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0603924   1.0047649   1.1190997
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0889680   0.9559207   1.2405331
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9825204   0.8300650   1.1629768
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.1366181   0.8732777   1.4793700
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9991079   0.7615956   1.3106913
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2164237   0.9526451   1.5532401
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           0.9805931   0.7816028   1.2302447
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           1.2255528   1.0163873   1.4777631
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.7548589   0.5134061   1.1098662
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1682431   1.1377531   1.1995502
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0282048   0.9782134   1.0807510
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9752868   0.8687527   1.0948852
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.1670099   1.0830824   1.2574409
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.9713731   0.8195146   1.1513715
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0596798   0.9339705   1.2023091
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.3585586   1.1007380   1.6767671
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.0550725   0.8106836   1.3731349
0-24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         <20                  [20-30)           0.8889535   0.5006202   1.5785186
0-24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           0.8176471   0.4666522   1.4326446
0-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <20                  [20-30)           1.0069204   0.7551985   1.3425459
0-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.7763105   0.4885030   1.2336835
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.0819801   0.8822614   1.3269093
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           1.0425049   0.8318687   1.3064759
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.0672348   0.8083308   1.4090645
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           1.0454545   0.8409490   1.2996926
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9634703   0.8019220   1.1575627
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9862992   0.8574375   1.1345271
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0063662   0.8225414   1.2312729
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.1193858   0.9253820   1.3540620
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.2880066   1.1163772   1.4860220
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.8608836   0.7396803   1.0019472
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.0822967   0.8404086   1.3938054
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1020864   0.8881846   1.3675023
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9989430   0.9152635   1.0902730
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0890998   1.0001171   1.1859995
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9320478   0.7768057   1.1183144
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           0.9899389   0.8895009   1.1017178
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9760586   0.7845999   1.2142372
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9030204   0.7921736   1.0293777
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1067202   1.0509344   1.1654672
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0375814   0.9839654   1.0941188
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.9542484   0.6698005   1.3594943
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8179272   0.5669933   1.1799166
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.0982652   0.8435839   1.4298356
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.1944636   0.9940240   1.4353207
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.2789012   1.0584588   1.5452547
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           1.0424788   0.9122238   1.1913328
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.4112834   1.1812206   1.6861548
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2784700   1.1100410   1.4724551
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.6451613   1.3063635   2.0718243
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0602467   0.7576331   1.4837300
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.6275992   1.0908630   2.4284252
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.1223833   0.7053811   1.7859057
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           1.2912913   0.9353186   1.7827435
0-6 months    IRC              INDIA                          >=30                 [20-30)           0.8237548   0.4909467   1.3821702
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2285434   1.1900907   1.2682385
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0652036   1.0049224   1.1291007
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           0.9757396   0.8144031   1.1690374
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.0732995   0.9454184   1.2184783
0-6 months    LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         <20                  [20-30)           0.6609687   0.3691090   1.1836058
0-6 months    LCNI-5           MALAWI                         >=30                 [20-30)           0.9121368   0.6107358   1.3622805
0-6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           1.2297297   0.7899021   1.9144591
0-6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.3188406   0.8929826   1.9477877
0-6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         <20                  [20-30)           0.6465116   0.3092336   1.3516553
0-6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           0.7787115   0.4161478   1.4571545
0-6 months    MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           <20                  [20-30)           1.0209453   0.7504729   1.3888967
0-6 months    MAL-ED           PERU                           >=30                 [20-30)           0.9836969   0.7015840   1.3792497
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.1566092   0.7802891   1.7144221
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           1.0045977   0.7240779   1.3937955
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.6730769   0.3180438   1.4244346
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7924528   0.5829399   1.0772662
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6219872   0.4027609   0.9605403
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8700614   0.6609467   1.1453372
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1366547   0.8663902   1.4912263
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9451531   0.6942543   1.2867248
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           1.4371828   1.1533445   1.7908737
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9141324   0.7801786   1.0710857
0-6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.2210526   0.8388267   1.7774464
0-6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0634167   0.7492257   1.5093651
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           1.0339008   0.8798489   1.2149255
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0573080   0.8586434   1.3019377
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0885122   0.7361226   1.6095945
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           0.7535854   0.5372352   1.0570621
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9670938   0.7016296   1.3329976
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8284651   0.6798499   1.0095676
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1000653   1.0207141   1.1855854
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0029356   0.9284575   1.0833881
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9774690   0.8800003   1.0857332
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9220409   0.8488765   1.0015113
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1592951   0.9568218   1.4046139
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.2720483   1.1368298   1.4233501
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0774234   0.9789114   1.1858491
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0296567   0.9576264   1.1071049
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           0.8694743   0.6724846   1.1241678
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9269082   0.7200389   1.1932117
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           0.8589175   0.4706868   1.5673676
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9260204   0.5869864   1.4608750
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.2164237   0.9526451   1.5532401
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           0.9805931   0.7816028   1.2302447
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           0.9759355   0.8985913   1.0599369
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0605830   0.9150693   1.2292362
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.8886011   0.7280280   1.0845900
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.1928451   1.0550676   1.3486146
6-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.9891304   0.8155996   1.1995826
6-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0683589   0.9222101   1.2376688
6-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.6592593   1.1361428   2.4232354
6-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           0.7964444   0.4299716   1.4752689
6-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          <20                  [20-30)           0.7960784   0.4224373   1.5002011
6-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.8845316   0.4775097   1.6384927
6-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           <20                  [20-30)           1.1587302   0.7303498   1.8383734
6-24 months   MAL-ED           PERU                           >=30                 [20-30)           1.1132898   0.6733912   1.8405557
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.9212121   0.4951164   1.7140046
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9288889   0.6011930   1.4352039
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           1.1518233   0.9050291   1.4659163
6-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9713710   0.7718212   1.2225131
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.8035714   0.5113832   1.2627068
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.3839286   0.9865177   1.9414332
6-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.1574574   0.9052895   1.4798665
6-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.7904626   0.6249750   0.9997699
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.1842105   0.7588740   1.8479411
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1437741   0.8037161   1.6277129
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9380714   0.7890885   1.1151829
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1894675   1.0339766   1.3683413
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.7935484   0.5486766   1.1477053
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0759978   0.9259047   1.2504217
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9325904   0.6478532   1.3424721
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9145535   0.7422697   1.1268251
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1814649   1.0746984   1.2988383
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0515549   0.9558969   1.1567856


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0075877   -0.0307900    0.0156147
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0190441    0.0099167    0.0281716
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0186350    0.0052354    0.0320345
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0103331   -0.0162609    0.0369272
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0123030   -0.0329266    0.0575326
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0073750   -0.0276097    0.0423597
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0019285   -0.0183280    0.0221851
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0357268    0.0290547    0.0423989
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0277576    0.0095349    0.0459803
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0081926   -0.0251807    0.0415658
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0343977   -0.0046598    0.0734552
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0173835   -0.0639436    0.0291766
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0109924   -0.0438273    0.0218424
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0191549   -0.0350267    0.0733364
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0139257   -0.0396671    0.0675185
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0047696   -0.0306651    0.0211260
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0099612   -0.0160754    0.0359979
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0006155   -0.0038144    0.0050455
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0117792   -0.0121501    0.0357085
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0067931   -0.0056756    0.0192618
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0067316   -0.0312810    0.0178179
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0098647   -0.0234741    0.0037446
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0095267    0.0038093    0.0152441
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0131030   -0.0392621    0.0130560
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0259545   -0.0025761    0.0544851
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0059390   -0.0015534    0.0134315
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0272225    0.0145678    0.0398772
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0406467    0.0139825    0.0673108
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0376940   -0.0072323    0.0826204
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0057856   -0.0153591    0.0269303
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0401933    0.0335007    0.0468859
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0072695   -0.0118693    0.0264083
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0333856   -0.0932459    0.0264748
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0288202   -0.0111450    0.0687855
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0286226   -0.0717589    0.0145137
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0009060   -0.0543112    0.0561231
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0091783   -0.0429606    0.0613172
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0482552   -0.1039787    0.0074683
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0267202   -0.0522675   -0.0011729
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0045400   -0.0194616    0.0285415
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0019842   -0.0011298    0.0050982
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0087627   -0.0121098    0.0296352
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0045280   -0.0111485    0.0202045
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0188814   -0.0496610    0.0118982
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0098840   -0.0210703    0.0013023
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0041944   -0.0008955    0.0092843
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0245182   -0.0524868    0.0034503
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0193211    0.0098007    0.0288416
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0105538   -0.0053609    0.0264685
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0194114   -0.0533161    0.0144934
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0136543   -0.0644013    0.0370926
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0073750   -0.0276097    0.0423597
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0013400   -0.0101264    0.0074463
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0184798   -0.0023875    0.0393472
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0109449   -0.0260389    0.0479287
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0222649   -0.0278377    0.0723675
6-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0175773   -0.0619084    0.0267539
6-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0261101   -0.0542433    0.1064636
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0149900   -0.0938865    0.0639065
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0077030   -0.0318697    0.0472757
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0083004   -0.0199891    0.0365899
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0014644   -0.0049244    0.0019957
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0125598   -0.0139828    0.0391024
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0062905   -0.0117154    0.0242963
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0011041   -0.0363276    0.0385358
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0068320   -0.0220700    0.0084060
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0092671    0.0026579    0.0158763


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0099319   -0.0407719    0.0199943
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0491173    0.0252704    0.0723807
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0271490    0.0073942    0.0465106
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0161716   -0.0263670    0.0569471
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0221612   -0.0628522    0.1003747
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0207047   -0.0850608    0.1161608
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0030065   -0.0290797    0.0340921
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0721320    0.0585003    0.0855664
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0535486    0.0176785    0.0881090
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0128548   -0.0409379    0.0638677
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0562678   -0.0103161    0.1184636
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0642914   -0.2510700    0.0946020
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0182474   -0.0743072    0.0348870
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0308719   -0.0606084    0.1144618
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0248447   -0.0756651    0.1159630
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0071888   -0.0469913    0.0311006
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0208580   -0.0352256    0.0739033
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0048308   -0.0304842    0.0389356
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0270342   -0.0294902    0.0804551
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0098244   -0.0086751    0.0279846
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0081324   -0.0382500    0.0211116
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0285141   -0.0686170    0.0100838
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0228348    0.0090312    0.0364461
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0256485   -0.0782305    0.0243692
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0797645   -0.0121972    0.1633711
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0312149   -0.0089535    0.0697842
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.1138800    0.0595592    0.1650632
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.1277989    0.0400380    0.2075367
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1184669   -0.0343430    0.2487012
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0136327   -0.0374821    0.0622292
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0973285    0.0809329    0.1134317
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0232453   -0.0399098    0.0825649
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0941645   -0.2769219    0.0624361
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0803933   -0.0381514    0.1854016
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.1282512   -0.3380526    0.0486541
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0021280   -0.1363740    0.1237493
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0248447   -0.1270216    0.1562471
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1159895   -0.2589886    0.0107674
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0768512   -0.1529670   -0.0057603
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0150275   -0.0677080    0.0913519
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0289186   -0.0164599    0.0722713
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0365112   -0.0544463    0.1196225
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0106418   -0.0269944    0.0468988
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0484856   -0.1306585    0.0277151
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0508320   -0.1098873    0.0050810
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0162098   -0.0036571    0.0356835
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0320816   -0.0694442    0.0039757
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0724675    0.0361278    0.1074372
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0163630   -0.0086381    0.0407445
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0344032   -0.0964041    0.0240916
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0348944   -0.1731146    0.0870403
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0207047   -0.0850608    0.1161608
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0061967   -0.0476484    0.0336150
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0507552   -0.0083299    0.1063781
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0182206   -0.0453447    0.0779206
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0525053   -0.0735034    0.1637230
6-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0416446   -0.1523167    0.0583983
6-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0659392   -0.1608356    0.2484124
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0394737   -0.2695024    0.1488748
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0134219   -0.0580165    0.0800367
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0315789   -0.0822230    0.1334140
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0227863   -0.0774555    0.0291091
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0418049   -0.0507043    0.1261691
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0125040   -0.0241665    0.0478615
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0014581   -0.0492208    0.0496892
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0301937   -0.0997635    0.0349752
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0352550    0.0097912    0.0600640
