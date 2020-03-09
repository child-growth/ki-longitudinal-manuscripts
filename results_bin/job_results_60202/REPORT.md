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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/8ef9f989-6bff-4d90-ae2e-c5b4a9e59ecd/2e75266c-f18a-453f-9322-2223663a1d3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ef9f989-6bff-4d90-ae2e-c5b4a9e59ecd/2e75266c-f18a-453f-9322-2223663a1d3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ef9f989-6bff-4d90-ae2e-c5b4a9e59ecd/2e75266c-f18a-453f-9322-2223663a1d3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ef9f989-6bff-4d90-ae2e-c5b4a9e59ecd/2e75266c-f18a-453f-9322-2223663a1d3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7683753   0.7354316   0.8013191
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.7329708   0.6630814   0.8028602
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7570211   0.7180049   0.7960374
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.3837891   0.3677840   0.3997941
0-24 months   COHORTS          INDIA                          <20                  NA                0.4075458   0.3603063   0.4547852
0-24 months   COHORTS          INDIA                          >=30                 NA                0.3884402   0.3616514   0.4152290
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6763409   0.6550350   0.6976467
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.7062300   0.6603963   0.7520637
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.7026084   0.6732267   0.7319901
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.6344394   0.5893422   0.6795365
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.6976054   0.6198292   0.7753816
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.5399057   0.4466992   0.6331122
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.5424053   0.4685766   0.6162340
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.6389985   0.4964493   0.7815477
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.5586834   0.4278104   0.6895565
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3464966   0.2584185   0.4345747
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.3962229   0.3406418   0.4518039
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3579799   0.3122036   0.4037562
0-24 months   IRC              INDIA                          [20-30)              NA                0.6395349   0.5887350   0.6903348
0-24 months   IRC              INDIA                          <20                  NA                0.7837838   0.6509771   0.9165904
0-24 months   IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.4644305   0.4537526   0.4751083
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.5357781   0.5248518   0.5467044
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.4782866   0.4542167   0.5023566
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.4989713   0.4732882   0.5246545
0-24 months   Keneba           GAMBIA                         <20                  NA                0.4900027   0.4381024   0.5419031
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.5456852   0.5152808   0.5760895
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.6305040   0.5815256   0.6794824
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.6211478   0.5288461   0.7134495
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.6725675   0.6074629   0.7376720
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.5769231   0.5050110   0.6488352
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.7837838   0.6508882   0.9166793
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.6086957   0.4673939   0.7499974
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                0.2946296   0.2152041   0.3740550
0-24 months   MAL-ED           BRAZIL                         <20                  NA                0.2708342   0.1289996   0.4126688
0-24 months   MAL-ED           BRAZIL                         >=30                 NA                0.2041535   0.0919542   0.3163529
0-24 months   MAL-ED           INDIA                          [20-30)              NA                0.6064810   0.5382916   0.6746704
0-24 months   MAL-ED           INDIA                          <20                  NA                0.6064196   0.4379334   0.7749059
0-24 months   MAL-ED           INDIA                          >=30                 NA                0.4363469   0.2098363   0.6628576
0-24 months   MAL-ED           PERU                           [20-30)              NA                0.6019887   0.5238773   0.6801000
0-24 months   MAL-ED           PERU                           <20                  NA                0.6580056   0.5556478   0.7603634
0-24 months   MAL-ED           PERU                           >=30                 NA                0.6117148   0.4928864   0.7305431
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.5300146   0.4533880   0.6066413
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.5656465   0.4156004   0.7156926
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.5885724   0.4920842   0.6850607
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.6710663   0.6266639   0.7154687
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.6097614   0.4990267   0.7204961
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.6649984   0.5852344   0.7447624
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.4765088   0.4326591   0.5203585
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.4330940   0.3438201   0.5223679
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.5198841   0.4341146   0.6056536
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.1284618   0.1120503   0.1448734
0-24 months   PROBIT           BELARUS                        <20                  NA                0.1485817   0.1121900   0.1849734
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.1171948   0.0955300   0.1388596
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.4295718   0.3862789   0.4728647
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.4166578   0.3126971   0.5206186
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.4718575   0.3885204   0.5551947
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.6893108   0.6404839   0.7381376
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.6954641   0.6427390   0.7481892
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.7205957   0.6636687   0.7775227
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.8344828   0.7916575   0.8773080
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.7777778   0.6418092   0.9137463
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.8260870   0.7485421   0.9036319
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.3524848   0.3287728   0.3761968
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3137655   0.2407278   0.3868033
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3381047   0.3004450   0.3757644
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.4120355   0.4018098   0.4222611
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.4456992   0.4235089   0.4678895
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4182229   0.3957894   0.4406563
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.5265865   0.4690481   0.5841248
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.5317217   0.3640122   0.6994312
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4657795   0.3248147   0.6067443
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.2989423   0.2588938   0.3389909
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.3654812   0.2784239   0.4525385
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.3511936   0.3037868   0.3986005
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.1908370   0.1775408   0.2041332
0-6 months    COHORTS          INDIA                          <20                  NA                0.2221415   0.1811155   0.2631675
0-6 months    COHORTS          INDIA                          >=30                 NA                0.1767866   0.1555294   0.1980439
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.2140460   0.1952178   0.2328742
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2669743   0.2235299   0.3104188
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2651318   0.2365716   0.2936919
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.2788476   0.2368997   0.3207955
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.4755852   0.3919684   0.5592019
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.2700891   0.1867541   0.3534240
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2834838   0.2144973   0.3524703
0-6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.4068138   0.2551278   0.5584998
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.3039374   0.1807155   0.4271593
0-6 months    IRC              INDIA                          [20-30)              NA                0.4201818   0.3678878   0.4724758
0-6 months    IRC              INDIA                          <20                  NA                0.5273217   0.3527417   0.7019016
0-6 months    IRC              INDIA                          >=30                 NA                0.3463868   0.1577283   0.5350453
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.3778084   0.3676166   0.3880003
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.4564360   0.4456461   0.4672260
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.4077551   0.3840942   0.4314161
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.3061430   0.2793197   0.3329664
0-6 months    Keneba           GAMBIA                         <20                  NA                0.2968825   0.2455998   0.3481652
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.3171627   0.2866997   0.3476257
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                0.3879699   0.2989329   0.4770068
0-6 months    LCNI-5           MALAWI                         <20                  NA                0.2552766   0.1141379   0.3964153
0-6 months    LCNI-5           MALAWI                         >=30                 NA                0.3614017   0.2408067   0.4819966
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.3250293   0.2568696   0.3931890
0-6 months    MAL-ED           BANGLADESH                     <20                  NA                0.4073309   0.2497342   0.5649275
0-6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.4101845   0.2642624   0.5561067
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                0.2517986   0.1794865   0.3241106
0-6 months    MAL-ED           BRAZIL                         <20                  NA                0.1627907   0.0522099   0.2733715
0-6 months    MAL-ED           BRAZIL                         >=30                 NA                0.1960784   0.0868794   0.3052774
0-6 months    MAL-ED           PERU                           [20-30)              NA                0.4237541   0.3440984   0.5034097
0-6 months    MAL-ED           PERU                           <20                  NA                0.4381843   0.3301614   0.5462072
0-6 months    MAL-ED           PERU                           >=30                 NA                0.4149393   0.2938827   0.5359958
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3481609   0.2748534   0.4214684
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.4097636   0.2524087   0.5671185
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3825159   0.2893619   0.4756699
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.4642857   0.3815156   0.5470559
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3125000   0.0849484   0.5400516
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3679245   0.2759454   0.4599037
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.3733984   0.3275135   0.4192832
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.2191441   0.1233182   0.3149700
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3106773   0.2319240   0.3894306
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2997937   0.2593142   0.3402731
0-6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.3208555   0.2398443   0.4018667
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2920816   0.2095973   0.3745659
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0679035   0.0571671   0.0786399
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0997348   0.0684609   0.1310088
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0647797   0.0498725   0.0796868
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.2351882   0.1980615   0.2723149
0-6 months    PROVIDE          BANGLADESH                     <20                  NA                0.2516190   0.1536857   0.3495524
0-6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.2556645   0.1809288   0.3304003
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.4254425   0.3907703   0.4601146
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.4439670   0.3867386   0.5011954
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.4291925   0.3396656   0.5187194
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4074294   0.3511733   0.4636855
0-6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.4266113   0.2588963   0.5943264
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.3042003   0.2113497   0.3970509
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2035003   0.1833130   0.2236876
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1750205   0.1150536   0.2349875
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1720847   0.1422216   0.2019479
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2555848   0.2464804   0.2646892
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.2748722   0.2546736   0.2950707
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2568191   0.2368005   0.2768377
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.7892830   0.7509212   0.8276448
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.7644270   0.6872389   0.8416150
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7217931   0.6718694   0.7717168
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.2590914   0.2426865   0.2754963
6-24 months   COHORTS          INDIA                          <20                  NA                0.2837668   0.2314670   0.3360665
6-24 months   COHORTS          INDIA                          >=30                 NA                0.2773118   0.2493036   0.3053201
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6387678   0.6130268   0.6645088
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.6794651   0.6209383   0.7379918
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.6533077   0.6158286   0.6907868
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5879936   0.5284788   0.6475084
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.5281702   0.3911538   0.6651866
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.4428441   0.3277622   0.5579259
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.4049587   0.3172550   0.4926623
6-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.3478261   0.1526483   0.5430038
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.3750000   0.2245622   0.5254378
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.3452349   0.2561572   0.4343127
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.3920472   0.3335061   0.4505884
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.3581941   0.3144107   0.4019775
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.2180216   0.2044424   0.2316008
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.2121268   0.1981624   0.2260913
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.2079699   0.1781963   0.2377436
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.3502945   0.3208018   0.3797872
6-24 months   Keneba           GAMBIA                         <20                  NA                0.3260462   0.2690674   0.3830250
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.4009336   0.3643340   0.4375333
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.5884621   0.5344868   0.6424373
6-24 months   LCNI-5           MALAWI                         <20                  NA                0.5661394   0.4658899   0.6663888
6-24 months   LCNI-5           MALAWI                         >=30                 NA                0.6313855   0.5600857   0.7026852
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.4017857   0.3107014   0.4928700
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.6666667   0.4644062   0.8689271
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3200000   0.1365633   0.5034367
6-24 months   MAL-ED           INDIA                          [20-30)              NA                0.4396552   0.3490365   0.5302738
6-24 months   MAL-ED           INDIA                          <20                  NA                0.3500000   0.1402807   0.5597193
6-24 months   MAL-ED           INDIA                          >=30                 NA                0.3888889   0.1629457   0.6148321
6-24 months   MAL-ED           PERU                           [20-30)              NA                0.3705995   0.2546179   0.4865812
6-24 months   MAL-ED           PERU                           <20                  NA                0.4145814   0.2637150   0.5654479
6-24 months   MAL-ED           PERU                           >=30                 NA                0.4061079   0.2320065   0.5802094
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3947368   0.2844951   0.5049786
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.3636364   0.1619847   0.5652880
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3666667   0.2443451   0.4889882
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.5674654   0.5021926   0.6327382
6-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.6677058   0.5262669   0.8091448
6-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5620365   0.4526234   0.6714497
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2597526   0.2129786   0.3065266
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.2098248   0.1225957   0.2970539
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.3331386   0.2337258   0.4325514
6-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0668452   0.0537150   0.0799755
6-24 months   PROBIT           BELARUS                        <20                  NA                0.0573177   0.0388742   0.0757611
6-24 months   PROBIT           BELARUS                        >=30                 NA                0.0561265   0.0419129   0.0703402
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.2901885   0.2412472   0.3391297
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.3075113   0.1755509   0.4394718
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3387685   0.2391387   0.4383982
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.4956969   0.4444685   0.5469254
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.4849519   0.4177635   0.5521403
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.5987121   0.5143736   0.6830506
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.7560976   0.6902380   0.8219571
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.6000000   0.3848536   0.8151464
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.8135593   0.7139769   0.9131417
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2322476   0.2060233   0.2584718
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2032852   0.1259586   0.2806117
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2252536   0.1865631   0.2639441
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2570844   0.2453811   0.2687877
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.2818932   0.2547134   0.3090731
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2756941   0.2492574   0.3021307


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   COHORTS          INDIA                          NA                   NA                0.3877282   0.3746257   0.4008307
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699496   0.7028430
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
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9539228   0.8595390   1.0586707
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9852231   0.9219782   1.0528064
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.0619004   0.9392973   1.2005064
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0121188   0.9346145   1.0960503
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0441924   0.9721866   1.1215314
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0388377   0.9869036   1.0935048
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0995619   0.9634273   1.2549326
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8509965   0.7064923   1.0250572
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.1780830   0.9071263   1.5299740
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.0300110   0.7857795   1.3501531
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1435115   0.8553316   1.5287855
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0331410   0.7816609   1.3655288
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           1.2255528   1.0163873   1.4777631
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.7548589   0.5134061   1.1098662
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1536239   1.1223291   1.1857914
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0298348   0.9764440   1.0861450
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9820259   0.8734089   1.1041505
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.0936203   1.0148829   1.1784664
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.9851608   0.8336892   1.1641531
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0667141   0.9436205   1.2058651
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.3585586   1.1007380   1.6767671
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.0550725   0.8106836   1.3731349
0-24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         <20                  [20-30)           0.9192364   0.5096108   1.6581193
0-24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           0.6929160   0.3756173   1.2782491
0-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <20                  [20-30)           0.9998988   0.7424354   1.3466459
0-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.7194734   0.4229971   1.2237481
0-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           <20                  [20-30)           1.0930531   0.8934323   1.3372755
0-24 months   MAL-ED           PERU                           >=30                 [20-30)           1.0161566   0.8058574   1.2813362
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.0672281   0.7901225   1.4415180
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           1.1104834   0.8943029   1.3789214
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9086455   0.7500248   1.1008124
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9909578   0.8653714   1.1347698
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.9088898   0.7254728   1.1386791
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0910273   0.9063010   1.3134053
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.1566213   0.9382639   1.4257960
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9122926   0.7726643   1.0771531
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           0.9699376   0.7425454   1.2669648
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0984370   0.8996706   1.3411172
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           1.0089268   0.9085447   1.1203998
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0453858   0.9582434   1.1404529
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9320478   0.7768057   1.1183144
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           0.9899389   0.8895009   1.1017178
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8901533   0.6988518   1.1338211
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9592036   0.8429057   1.0915474
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0817011   1.0235362   1.1431713
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0150167   0.9571474   1.0763849
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0097519   0.7227587   1.4107044
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.8845261   0.6407921   1.2209676
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.2225809   0.9324858   1.6029242
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.1747873   0.9734848   1.4177162
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.1640375   0.9557751   1.4176799
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9263749   0.8066243   1.0639036
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.2472756   1.0383395   1.4982540
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2386674   1.0797044   1.4210343
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.7055380   1.3542313   2.1479787
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9685902   0.6872558   1.3650914
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.4350513   0.9191358   2.2405525
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.0721508   0.6689372   1.7184085
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           1.2549845   0.8813340   1.7870478
0-6 months    IRC              INDIA                          >=30                 [20-30)           0.8243736   0.4714776   1.4414087
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2081150   1.1689905   1.2485489
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0792642   1.0145500   1.1481062
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           0.9697510   0.7992325   1.1766500
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.0359952   0.9103257   1.1790132
0-6 months    LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         <20                  [20-30)           0.6579805   0.3616797   1.1970214
0-6 months    LCNI-5           MALAWI                         >=30                 [20-30)           0.9315200   0.6211721   1.3969228
0-6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           1.2532127   0.8103206   1.9381737
0-6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.2619925   0.8389116   1.8984419
0-6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         <20                  [20-30)           0.6465116   0.3092336   1.3516553
0-6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           0.7787115   0.4161478   1.4571545
0-6 months    MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           <20                  [20-30)           1.0340534   0.7583970   1.4099032
0-6 months    MAL-ED           PERU                           >=30                 [20-30)           0.9791984   0.6924635   1.3846642
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.1769375   0.7596524   1.8234415
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           1.0986757   0.7990880   1.5105824
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.6730769   0.3180438   1.4244346
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.7924528   0.5829399   1.0772662
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5868910   0.3733481   0.9225734
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8320264   0.6290337   1.1005260
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0702544   0.8039482   1.4247740
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9742754   0.7135579   1.3302531
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           1.4687729   1.1017419   1.9580755
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9539958   0.7847315   1.1597699
0-6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.0698626   0.7030636   1.6280263
0-6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0870637   0.7813740   1.5123456
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           1.0435419   0.8835694   1.2324777
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0088144   0.7990862   1.2735877
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0470803   0.6910205   1.5866058
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           0.7466331   0.5364359   1.0391941
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8600503   0.6023505   1.2280002
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8456239   0.6929522   1.0319323
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0754635   0.9914006   1.1666543
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0048291   0.9226092   1.0943762
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9685081   0.8663314   1.0827357
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9144922   0.8409983   0.9944086
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.0952379   0.9019898   1.3298888
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0703241   0.9511859   1.2043847
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0637121   0.9678440   1.1690762
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0227624   0.9547265   1.0956466
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           0.8982585   0.6797927   1.1869328
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7531444   0.5705859   0.9941123
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           0.8589175   0.4706868   1.5673676
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           0.9260204   0.5869864   1.4608750
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1355956   0.8412402   1.5329478
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.0375373   0.7855223   1.3704048
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           0.9729625   0.8917003   1.0616302
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           0.9538961   0.8202304   1.1093441
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9307775   0.7677354   1.1284443
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.1445617   1.0120858   1.2943779
6-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.9620660   0.7888540   1.1733109
6-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0729417   0.9288504   1.2393857
6-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.6592593   1.1361428   2.4232354
6-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           0.7964444   0.4299716   1.4752689
6-24 months   MAL-ED           INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          <20                  [20-30)           0.7960784   0.4224373   1.5002011
6-24 months   MAL-ED           INDIA                          >=30                 [20-30)           0.8845316   0.4775097   1.6384927
6-24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           <20                  [20-30)           1.1186778   0.6905803   1.8121570
6-24 months   MAL-ED           PERU                           >=30                 [20-30)           1.0958134   0.6448360   1.8621899
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.9212121   0.4951164   1.7140046
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9288889   0.6011930   1.4352039
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           1.1766458   0.9263344   1.4945957
6-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9904330   0.7917058   1.2390431
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.8077869   0.5142485   1.2688802
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.2825227   0.9081507   1.8112240
6-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.8574682   0.6520238   1.1276455
6-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.8396490   0.6606768   1.0671035
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.0596952   0.6703550   1.6751630
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1674084   0.8346271   1.6328758
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9783235   0.8046452   1.1894893
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.2078188   1.0640060   1.3710697
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.7935484   0.5486766   1.1477053
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0759978   0.9259047   1.2504217
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8752951   0.5886288   1.3015700
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9698858   0.7903160   1.1902562
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0965009   0.9858568   1.2195628
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0723875   0.9646874   1.1921115


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0044047   -0.0286934    0.0198839
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0039391   -0.0052795    0.0131578
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0100555   -0.0027601    0.0228710
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0045291   -0.0223423    0.0314005
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0127548   -0.0326537    0.0581633
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0097023   -0.0354358    0.0548403
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0019285   -0.0183280    0.0221851
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0308664    0.0238285    0.0379044
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0193917    0.0015206    0.0372628
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0068095   -0.0257842    0.0394032
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0343977   -0.0046598    0.0734552
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0242433   -0.0742165    0.0257299
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0040714   -0.0368368    0.0286941
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0184734   -0.0358746    0.0728214
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0304949   -0.0229051    0.0838949
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0075894   -0.0326954    0.0175166
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0010638   -0.0246368    0.0267643
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0010428   -0.0049818    0.0028963
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0061425   -0.0165474    0.0288324
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0021439   -0.0116580    0.0159458
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0067316   -0.0312810    0.0178179
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0065252   -0.0201555    0.0071051
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0051656   -0.0009907    0.0113219
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0157169   -0.0425570    0.0111232
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0264472   -0.0032978    0.0561922
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0005741   -0.0084312    0.0072829
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0249991    0.0125879    0.0374104
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0392040    0.0122903    0.0661177
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0346980   -0.0101970    0.0795930
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0042084   -0.0169382    0.0253551
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0351566    0.0281499    0.0421632
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0065872   -0.0128836    0.0260581
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0334244   -0.0935336    0.0266848
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0334613   -0.0052567    0.0721792
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0286226   -0.0717589    0.0145137
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0019885   -0.0541497    0.0581267
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0212658   -0.0302640    0.0727956
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0482552   -0.1039787    0.0074683
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0257110   -0.0506071   -0.0008149
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0023172   -0.0219202    0.0265545
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0007089   -0.0020647    0.0034824
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0048118   -0.0159243    0.0255479
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0000477   -0.0175531    0.0176486
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0180064   -0.0476406    0.0116278
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0090559   -0.0205606    0.0024488
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0031724   -0.0023533    0.0086981
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0250372   -0.0533579    0.0032836
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0075260   -0.0021200    0.0171720
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0062110   -0.0090966    0.0215186
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0237618   -0.0584574    0.0109338
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0136543   -0.0644013    0.0370926
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0109640   -0.0355149    0.0574428
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0017745   -0.0111297    0.0075808
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0138029   -0.0070069    0.0346127
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0122264   -0.0239702    0.0484230
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0222649   -0.0278377    0.0723675
6-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0175773   -0.0619084    0.0267539
6-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0253736   -0.0599392    0.1106865
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0149900   -0.0938865    0.0639065
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0064476   -0.0320500    0.0449452
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0030932   -0.0246570    0.0308435
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0025794   -0.0060062    0.0008474
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0102501   -0.0151807    0.0356810
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0073781   -0.0105915    0.0253477
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0011041   -0.0363276    0.0385358
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0059748   -0.0214133    0.0094637
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0057755   -0.0013897    0.0129407


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0057656   -0.0380688    0.0255324
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0101595   -0.0139063    0.0336541
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0146497   -0.0042188    0.0331636
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0070881   -0.0358802    0.0482741
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0229750   -0.0623787    0.1014713
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0272383   -0.1112509    0.1484683
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0030065   -0.0290797    0.0340921
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0623191    0.0479372    0.0764836
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0374096    0.0022727    0.0713090
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0106846   -0.0418090    0.0605333
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0562678   -0.0103161    0.1184636
0-24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0896617   -0.2900911    0.0796288
0-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0067585   -0.0626739    0.0462148
0-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0297736   -0.0620115    0.1136261
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0544057   -0.0459913    0.1451664
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0114389   -0.0500115    0.0257169
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0022274   -0.0530652    0.0546168
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0081839   -0.0395759    0.0222602
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0140975   -0.0393979    0.0648397
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0031005   -0.0171549    0.0229527
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0081324   -0.0382500    0.0211116
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0188612   -0.0590239    0.0197784
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0123816   -0.0024876    0.0270303
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0307650   -0.0847898    0.0205692
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0812786   -0.0148763    0.1683233
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0030176   -0.0451759    0.0374402
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.1045792    0.0512029    0.1549526
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.1232630    0.0345254    0.2038446
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1090509   -0.0434783    0.2392842
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0099164   -0.0411963    0.0585199
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0851321    0.0679444    0.1020028
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0210636   -0.0432372    0.0814012
0-6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0942739   -0.2778533    0.0629320
0-6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0933393   -0.0217854    0.1954929
0-6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.1282512   -0.3380526    0.0486541
0-6 months    MAL-ED           PERU                           [20-30)              NA                 0.0046707   -0.1363328    0.1281776
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0575644   -0.0928149    0.1872505
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1159895   -0.2589886    0.0107674
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0739485   -0.1480359   -0.0046423
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0076699   -0.0758831    0.0847342
0-6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0103314   -0.0306841    0.0497147
0-6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0200493   -0.0701998    0.1026877
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0001122   -0.0421224    0.0406352
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0462386   -0.1252069    0.0271877
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0465731   -0.1073340    0.0108538
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0122601   -0.0093291    0.0333876
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0327606   -0.0705924    0.0037343
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0282277   -0.0086123    0.0637222
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0096297   -0.0143991    0.0330894
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0421136   -0.1056237    0.0177483
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0348944   -0.1731146    0.0870403
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0307804   -0.1124252    0.1555508
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0082057   -0.0523916    0.0341250
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0379099   -0.0209834    0.0934061
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0203540   -0.0418197    0.0788173
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0525053   -0.0735034    0.1637230
6-24 months   MAL-ED           INDIA                          [20-30)              NA                -0.0416446   -0.1523167    0.0583983
6-24 months   MAL-ED           PERU                           [20-30)              NA                 0.0640792   -0.1786215    0.2568032
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0394737   -0.2695024    0.1488748
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0112345   -0.0581938    0.0761075
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0117683   -0.0996188    0.1118723
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0401361   -0.0927885    0.0099794
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0341172   -0.0544325    0.1152307
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0146660   -0.0220224    0.0500374
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0014581   -0.0492208    0.0496892
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0264052   -0.0968921    0.0395523
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0219717   -0.0056687    0.0488524
