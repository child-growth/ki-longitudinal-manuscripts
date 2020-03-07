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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        mage       ever_co   n_cell       n
------------  ---------------  -----------------------------  --------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)          0      225     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)          1       71     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20              0       27     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20              1        7     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30             0       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30             1        8     373
0-24 months   COHORTS          GUATEMALA                      [20-30)          0      579    1341
0-24 months   COHORTS          GUATEMALA                      [20-30)          1       76    1341
0-24 months   COHORTS          GUATEMALA                      <20              0      179    1341
0-24 months   COHORTS          GUATEMALA                      <20              1       17    1341
0-24 months   COHORTS          GUATEMALA                      >=30             0      435    1341
0-24 months   COHORTS          GUATEMALA                      >=30             1       55    1341
0-24 months   COHORTS          INDIA                          [20-30)          0     3279    5303
0-24 months   COHORTS          INDIA                          [20-30)          1      317    5303
0-24 months   COHORTS          INDIA                          <20              0      377    5303
0-24 months   COHORTS          INDIA                          <20              1       49    5303
0-24 months   COHORTS          INDIA                          >=30             0     1127    5303
0-24 months   COHORTS          INDIA                          >=30             1      154    5303
0-24 months   COHORTS          PHILIPPINES                    [20-30)          0     1513    3045
0-24 months   COHORTS          PHILIPPINES                    [20-30)          1      307    3045
0-24 months   COHORTS          PHILIPPINES                    <20              0      292    3045
0-24 months   COHORTS          PHILIPPINES                    <20              1       85    3045
0-24 months   COHORTS          PHILIPPINES                    >=30             0      680    3045
0-24 months   COHORTS          PHILIPPINES                    >=30             1      168    3045
0-24 months   EE               PAKISTAN                       [20-30)          0       95     377
0-24 months   EE               PAKISTAN                       [20-30)          1       67     377
0-24 months   EE               PAKISTAN                       <20              0        0     377
0-24 months   EE               PAKISTAN                       <20              1        1     377
0-24 months   EE               PAKISTAN                       >=30             0      114     377
0-24 months   EE               PAKISTAN                       >=30             1      100     377
0-24 months   GMS-Nepal        NEPAL                          [20-30)          0      319     686
0-24 months   GMS-Nepal        NEPAL                          [20-30)          1      125     686
0-24 months   GMS-Nepal        NEPAL                          <20              0       98     686
0-24 months   GMS-Nepal        NEPAL                          <20              1       43     686
0-24 months   GMS-Nepal        NEPAL                          >=30             0       67     686
0-24 months   GMS-Nepal        NEPAL                          >=30             1       34     686
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)          0      163     281
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)          1       12     281
0-24 months   Guatemala BSC    GUATEMALA                      <20              0       42     281
0-24 months   Guatemala BSC    GUATEMALA                      <20              1        5     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30             0       54     281
0-24 months   Guatemala BSC    GUATEMALA                      >=30             1        5     281
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)          1      192    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20              0      348    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20              1       55    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3178
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3178
0-24 months   IRC              INDIA                          [20-30)          0      281     410
0-24 months   IRC              INDIA                          [20-30)          1       63     410
0-24 months   IRC              INDIA                          <20              0       29     410
0-24 months   IRC              INDIA                          <20              1        8     410
0-24 months   IRC              INDIA                          >=30             0       24     410
0-24 months   IRC              INDIA                          >=30             1        5     410
0-24 months   JiVitA-3         BANGLADESH                     [20-30)          0    11564   26912
0-24 months   JiVitA-3         BANGLADESH                     [20-30)          1     1017   26912
0-24 months   JiVitA-3         BANGLADESH                     <20              0    10860   26912
0-24 months   JiVitA-3         BANGLADESH                     <20              1     1170   26912
0-24 months   JiVitA-3         BANGLADESH                     >=30             0     2097   26912
0-24 months   JiVitA-3         BANGLADESH                     >=30             1      204   26912
0-24 months   Keneba           GAMBIA                         [20-30)          0     1258    2857
0-24 months   Keneba           GAMBIA                         [20-30)          1      178    2857
0-24 months   Keneba           GAMBIA                         <20              0      348    2857
0-24 months   Keneba           GAMBIA                         <20              1       46    2857
0-24 months   Keneba           GAMBIA                         >=30             0      822    2857
0-24 months   Keneba           GAMBIA                         >=30             1      205    2857
0-24 months   LCNI-5           MALAWI                         [20-30)          0      346     670
0-24 months   LCNI-5           MALAWI                         [20-30)          1       18     670
0-24 months   LCNI-5           MALAWI                         <20              0      101     670
0-24 months   LCNI-5           MALAWI                         <20              1        7     670
0-24 months   LCNI-5           MALAWI                         >=30             0      187     670
0-24 months   LCNI-5           MALAWI                         >=30             1       11     670
0-24 months   MAL-ED           BANGLADESH                     [20-30)          0      161     263
0-24 months   MAL-ED           BANGLADESH                     [20-30)          1       19     263
0-24 months   MAL-ED           BANGLADESH                     <20              0       27     263
0-24 months   MAL-ED           BANGLADESH                     <20              1       10     263
0-24 months   MAL-ED           BANGLADESH                     >=30             0       36     263
0-24 months   MAL-ED           BANGLADESH                     >=30             1       10     263
0-24 months   MAL-ED           BRAZIL                         [20-30)          0      138     233
0-24 months   MAL-ED           BRAZIL                         [20-30)          1        1     233
0-24 months   MAL-ED           BRAZIL                         <20              0       43     233
0-24 months   MAL-ED           BRAZIL                         <20              1        0     233
0-24 months   MAL-ED           BRAZIL                         >=30             0       49     233
0-24 months   MAL-ED           BRAZIL                         >=30             1        2     233
0-24 months   MAL-ED           INDIA                          [20-30)          0      152     249
0-24 months   MAL-ED           INDIA                          [20-30)          1       42     249
0-24 months   MAL-ED           INDIA                          <20              0       23     249
0-24 months   MAL-ED           INDIA                          <20              1       11     249
0-24 months   MAL-ED           INDIA                          >=30             0       21     249
0-24 months   MAL-ED           INDIA                          >=30             1        0     249
0-24 months   MAL-ED           NEPAL                          [20-30)          0      173     240
0-24 months   MAL-ED           NEPAL                          [20-30)          1       16     240
0-24 months   MAL-ED           NEPAL                          <20              0        3     240
0-24 months   MAL-ED           NEPAL                          <20              1        2     240
0-24 months   MAL-ED           NEPAL                          >=30             0       42     240
0-24 months   MAL-ED           NEPAL                          >=30             1        4     240
0-24 months   MAL-ED           PERU                           [20-30)          0      149     302
0-24 months   MAL-ED           PERU                           [20-30)          1        4     302
0-24 months   MAL-ED           PERU                           <20              0       77     302
0-24 months   MAL-ED           PERU                           <20              1        5     302
0-24 months   MAL-ED           PERU                           >=30             0       64     302
0-24 months   MAL-ED           PERU                           >=30             1        3     302
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)          0      146     312
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)          1       13     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20              0       44     312
0-24 months   MAL-ED           SOUTH AFRICA                   <20              1        4     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30             0       99     312
0-24 months   MAL-ED           SOUTH AFRICA                   >=30             1        6     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0      128     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       14     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        2     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       96     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1       10     261
0-24 months   NIH-Birth        BANGLADESH                     [20-30)          0      325     622
0-24 months   NIH-Birth        BANGLADESH                     [20-30)          1       92     622
0-24 months   NIH-Birth        BANGLADESH                     <20              0       64     622
0-24 months   NIH-Birth        BANGLADESH                     <20              1        9     622
0-24 months   NIH-Birth        BANGLADESH                     >=30             0       97     622
0-24 months   NIH-Birth        BANGLADESH                     >=30             1       35     622
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)          0      451     758
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)          1       43     758
0-24 months   NIH-Crypto       BANGLADESH                     <20              0      121     758
0-24 months   NIH-Crypto       BANGLADESH                     <20              1       15     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30             0      115     758
0-24 months   NIH-Crypto       BANGLADESH                     >=30             1       13     758
0-24 months   PROBIT           BELARUS                        [20-30)          0    12119   16897
0-24 months   PROBIT           BELARUS                        [20-30)          1       10   16897
0-24 months   PROBIT           BELARUS                        <20              0     1743   16897
0-24 months   PROBIT           BELARUS                        <20              1        2   16897
0-24 months   PROBIT           BELARUS                        >=30             0     3017   16897
0-24 months   PROBIT           BELARUS                        >=30             1        6   16897
0-24 months   PROVIDE          BANGLADESH                     [20-30)          0      437     700
0-24 months   PROVIDE          BANGLADESH                     [20-30)          1       56     700
0-24 months   PROVIDE          BANGLADESH                     <20              0       70     700
0-24 months   PROVIDE          BANGLADESH                     <20              1       15     700
0-24 months   PROVIDE          BANGLADESH                     >=30             0      103     700
0-24 months   PROVIDE          BANGLADESH                     >=30             1       19     700
0-24 months   SAS-CompFeed     INDIA                          [20-30)          0      891    1513
0-24 months   SAS-CompFeed     INDIA                          [20-30)          1      261    1513
0-24 months   SAS-CompFeed     INDIA                          <20              0      153    1513
0-24 months   SAS-CompFeed     INDIA                          <20              1       39    1513
0-24 months   SAS-CompFeed     INDIA                          >=30             0      118    1513
0-24 months   SAS-CompFeed     INDIA                          >=30             1       51    1513
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)          0      187     418
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)          1      103     418
0-24 months   SAS-FoodSuppl    INDIA                          <20              0       24     418
0-24 months   SAS-FoodSuppl    INDIA                          <20              1       12     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30             0       52     418
0-24 months   SAS-FoodSuppl    INDIA                          >=30             1       40     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1494    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       77    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      157    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       10    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      606    2376
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       32    2376
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)          0     8955   13904
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)          1      394   13904
0-24 months   ZVITAMBO         ZIMBABWE                       <20              0     2129   13904
0-24 months   ZVITAMBO         ZIMBABWE                       <20              1       88   13904
0-24 months   ZVITAMBO         ZIMBABWE                       >=30             0     2230   13904
0-24 months   ZVITAMBO         ZIMBABWE                       >=30             1      108   13904
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)          0      268     368
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)          1       24     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20              0       30     368
0-6 months    CMC-V-BCS-2002   INDIA                          <20              1        4     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30             0       39     368
0-6 months    CMC-V-BCS-2002   INDIA                          >=30             1        3     368
0-6 months    COHORTS          GUATEMALA                      [20-30)          0      515    1062
0-6 months    COHORTS          GUATEMALA                      [20-30)          1        9    1062
0-6 months    COHORTS          GUATEMALA                      <20              0      136    1062
0-6 months    COHORTS          GUATEMALA                      <20              1        1    1062
0-6 months    COHORTS          GUATEMALA                      >=30             0      391    1062
0-6 months    COHORTS          GUATEMALA                      >=30             1       10    1062
0-6 months    COHORTS          INDIA                          [20-30)          0     3373    5101
0-6 months    COHORTS          INDIA                          [20-30)          1       89    5101
0-6 months    COHORTS          INDIA                          <20              0      386    5101
0-6 months    COHORTS          INDIA                          <20              1       14    5101
0-6 months    COHORTS          INDIA                          >=30             0     1202    5101
0-6 months    COHORTS          INDIA                          >=30             1       37    5101
0-6 months    COHORTS          PHILIPPINES                    [20-30)          0     1786    3044
0-6 months    COHORTS          PHILIPPINES                    [20-30)          1       33    3044
0-6 months    COHORTS          PHILIPPINES                    <20              0      365    3044
0-6 months    COHORTS          PHILIPPINES                    <20              1       12    3044
0-6 months    COHORTS          PHILIPPINES                    >=30             0      821    3044
0-6 months    COHORTS          PHILIPPINES                    >=30             1       27    3044
0-6 months    EE               PAKISTAN                       [20-30)          0      150     377
0-6 months    EE               PAKISTAN                       [20-30)          1       12     377
0-6 months    EE               PAKISTAN                       <20              0        0     377
0-6 months    EE               PAKISTAN                       <20              1        1     377
0-6 months    EE               PAKISTAN                       >=30             0      170     377
0-6 months    EE               PAKISTAN                       >=30             1       44     377
0-6 months    GMS-Nepal        NEPAL                          [20-30)          0      423     686
0-6 months    GMS-Nepal        NEPAL                          [20-30)          1       21     686
0-6 months    GMS-Nepal        NEPAL                          <20              0      132     686
0-6 months    GMS-Nepal        NEPAL                          <20              1        9     686
0-6 months    GMS-Nepal        NEPAL                          >=30             0       95     686
0-6 months    GMS-Nepal        NEPAL                          >=30             1        6     686
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)          0      163     264
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)          1        1     264
0-6 months    Guatemala BSC    GUATEMALA                      <20              0       43     264
0-6 months    Guatemala BSC    GUATEMALA                      <20              1        3     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30             0       51     264
0-6 months    Guatemala BSC    GUATEMALA                      >=30             1        3     264
0-6 months    IRC              INDIA                          [20-30)          0      325     409
0-6 months    IRC              INDIA                          [20-30)          1       19     409
0-6 months    IRC              INDIA                          <20              0       30     409
0-6 months    IRC              INDIA                          <20              1        6     409
0-6 months    IRC              INDIA                          >=30             0       29     409
0-6 months    IRC              INDIA                          >=30             1        0     409
0-6 months    JiVitA-3         BANGLADESH                     [20-30)          0    12109   26805
0-6 months    JiVitA-3         BANGLADESH                     [20-30)          1      431   26805
0-6 months    JiVitA-3         BANGLADESH                     <20              0    11441   26805
0-6 months    JiVitA-3         BANGLADESH                     <20              1      530   26805
0-6 months    JiVitA-3         BANGLADESH                     >=30             0     2191   26805
0-6 months    JiVitA-3         BANGLADESH                     >=30             1      103   26805
0-6 months    Keneba           GAMBIA                         [20-30)          0     1150    2440
0-6 months    Keneba           GAMBIA                         [20-30)          1       20    2440
0-6 months    Keneba           GAMBIA                         <20              0      346    2440
0-6 months    Keneba           GAMBIA                         <20              1       12    2440
0-6 months    Keneba           GAMBIA                         >=30             0      875    2440
0-6 months    Keneba           GAMBIA                         >=30             1       37    2440
0-6 months    LCNI-5           MALAWI                         [20-30)          0      116     220
0-6 months    LCNI-5           MALAWI                         [20-30)          1        0     220
0-6 months    LCNI-5           MALAWI                         <20              0       39     220
0-6 months    LCNI-5           MALAWI                         <20              1        0     220
0-6 months    LCNI-5           MALAWI                         >=30             0       65     220
0-6 months    LCNI-5           MALAWI                         >=30             1        0     220
0-6 months    MAL-ED           BANGLADESH                     [20-30)          0      176     263
0-6 months    MAL-ED           BANGLADESH                     [20-30)          1        4     263
0-6 months    MAL-ED           BANGLADESH                     <20              0       34     263
0-6 months    MAL-ED           BANGLADESH                     <20              1        3     263
0-6 months    MAL-ED           BANGLADESH                     >=30             0       44     263
0-6 months    MAL-ED           BANGLADESH                     >=30             1        2     263
0-6 months    MAL-ED           BRAZIL                         [20-30)          0      139     233
0-6 months    MAL-ED           BRAZIL                         [20-30)          1        0     233
0-6 months    MAL-ED           BRAZIL                         <20              0       43     233
0-6 months    MAL-ED           BRAZIL                         <20              1        0     233
0-6 months    MAL-ED           BRAZIL                         >=30             0       50     233
0-6 months    MAL-ED           BRAZIL                         >=30             1        1     233
0-6 months    MAL-ED           INDIA                          [20-30)          0      181     249
0-6 months    MAL-ED           INDIA                          [20-30)          1       13     249
0-6 months    MAL-ED           INDIA                          <20              0       29     249
0-6 months    MAL-ED           INDIA                          <20              1        5     249
0-6 months    MAL-ED           INDIA                          >=30             0       21     249
0-6 months    MAL-ED           INDIA                          >=30             1        0     249
0-6 months    MAL-ED           NEPAL                          [20-30)          0      183     240
0-6 months    MAL-ED           NEPAL                          [20-30)          1        6     240
0-6 months    MAL-ED           NEPAL                          <20              0        4     240
0-6 months    MAL-ED           NEPAL                          <20              1        1     240
0-6 months    MAL-ED           NEPAL                          >=30             0       45     240
0-6 months    MAL-ED           NEPAL                          >=30             1        1     240
0-6 months    MAL-ED           PERU                           [20-30)          0      153     302
0-6 months    MAL-ED           PERU                           [20-30)          1        0     302
0-6 months    MAL-ED           PERU                           <20              0       81     302
0-6 months    MAL-ED           PERU                           <20              1        1     302
0-6 months    MAL-ED           PERU                           >=30             0       66     302
0-6 months    MAL-ED           PERU                           >=30             1        1     302
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)          0      155     312
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)          1        4     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20              0       47     312
0-6 months    MAL-ED           SOUTH AFRICA                   <20              1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30             0      105     312
0-6 months    MAL-ED           SOUTH AFRICA                   >=30             1        0     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0      138     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       16     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0      103     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        3     261
0-6 months    NIH-Birth        BANGLADESH                     [20-30)          0      379     620
0-6 months    NIH-Birth        BANGLADESH                     [20-30)          1       37     620
0-6 months    NIH-Birth        BANGLADESH                     <20              0       71     620
0-6 months    NIH-Birth        BANGLADESH                     <20              1        1     620
0-6 months    NIH-Birth        BANGLADESH                     >=30             0      125     620
0-6 months    NIH-Birth        BANGLADESH                     >=30             1        7     620
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)          0      484     758
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)          1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     <20              0      133     758
0-6 months    NIH-Crypto       BANGLADESH                     <20              1        3     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30             0      124     758
0-6 months    NIH-Crypto       BANGLADESH                     >=30             1        4     758
0-6 months    PROBIT           BELARUS                        [20-30)          0    12120   16892
0-6 months    PROBIT           BELARUS                        [20-30)          1        7   16892
0-6 months    PROBIT           BELARUS                        <20              0     1742   16892
0-6 months    PROBIT           BELARUS                        <20              1        2   16892
0-6 months    PROBIT           BELARUS                        >=30             0     3017   16892
0-6 months    PROBIT           BELARUS                        >=30             1        4   16892
0-6 months    PROVIDE          BANGLADESH                     [20-30)          0      475     700
0-6 months    PROVIDE          BANGLADESH                     [20-30)          1       18     700
0-6 months    PROVIDE          BANGLADESH                     <20              0       82     700
0-6 months    PROVIDE          BANGLADESH                     <20              1        3     700
0-6 months    PROVIDE          BANGLADESH                     >=30             0      113     700
0-6 months    PROVIDE          BANGLADESH                     >=30             1        9     700
0-6 months    SAS-CompFeed     INDIA                          [20-30)          0     1064    1504
0-6 months    SAS-CompFeed     INDIA                          [20-30)          1       81    1504
0-6 months    SAS-CompFeed     INDIA                          <20              0      185    1504
0-6 months    SAS-CompFeed     INDIA                          <20              1        6    1504
0-6 months    SAS-CompFeed     INDIA                          >=30             0      149    1504
0-6 months    SAS-CompFeed     INDIA                          >=30             1       19    1504
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)          0      269     416
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)          1       20     416
0-6 months    SAS-FoodSuppl    INDIA                          <20              0       33     416
0-6 months    SAS-FoodSuppl    INDIA                          <20              1        3     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30             0       82     416
0-6 months    SAS-FoodSuppl    INDIA                          >=30             1        9     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1561    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       10    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      163    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        4    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      633    2376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        5    2376
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)          0     9182   13808
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)          1      110   13808
0-6 months    ZVITAMBO         ZIMBABWE                       <20              0     2170   13808
0-6 months    ZVITAMBO         ZIMBABWE                       <20              1       27   13808
0-6 months    ZVITAMBO         ZIMBABWE                       >=30             0     2289   13808
0-6 months    ZVITAMBO         ZIMBABWE                       >=30             1       30   13808
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)          0      239     373
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)          1       57     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20              0       29     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20              1        5     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30             0       35     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30             1        8     373
6-24 months   COHORTS          GUATEMALA                      [20-30)          0      519    1211
6-24 months   COHORTS          GUATEMALA                      [20-30)          1       71    1211
6-24 months   COHORTS          GUATEMALA                      <20              0      156    1211
6-24 months   COHORTS          GUATEMALA                      <20              1       16    1211
6-24 months   COHORTS          GUATEMALA                      >=30             0      400    1211
6-24 months   COHORTS          GUATEMALA                      >=30             1       49    1211
6-24 months   COHORTS          INDIA                          [20-30)          0     3086    4955
6-24 months   COHORTS          INDIA                          [20-30)          1      278    4955
6-24 months   COHORTS          INDIA                          <20              0      335    4955
6-24 months   COHORTS          INDIA                          <20              1       42    4955
6-24 months   COHORTS          INDIA                          >=30             0     1074    4955
6-24 months   COHORTS          INDIA                          >=30             1      140    4955
6-24 months   COHORTS          PHILIPPINES                    [20-30)          0     1380    2808
6-24 months   COHORTS          PHILIPPINES                    [20-30)          1      293    2808
6-24 months   COHORTS          PHILIPPINES                    <20              0      264    2808
6-24 months   COHORTS          PHILIPPINES                    <20              1       82    2808
6-24 months   COHORTS          PHILIPPINES                    >=30             0      628    2808
6-24 months   COHORTS          PHILIPPINES                    >=30             1      161    2808
6-24 months   EE               PAKISTAN                       [20-30)          0       97     370
6-24 months   EE               PAKISTAN                       [20-30)          1       63     370
6-24 months   EE               PAKISTAN                       <20              0        1     370
6-24 months   EE               PAKISTAN                       <20              1        0     370
6-24 months   EE               PAKISTAN                       >=30             0      118     370
6-24 months   EE               PAKISTAN                       >=30             1       91     370
6-24 months   GMS-Nepal        NEPAL                          [20-30)          0      265     590
6-24 months   GMS-Nepal        NEPAL                          [20-30)          1      117     590
6-24 months   GMS-Nepal        NEPAL                          <20              0       78     590
6-24 months   GMS-Nepal        NEPAL                          <20              1       41     590
6-24 months   GMS-Nepal        NEPAL                          >=30             0       55     590
6-24 months   GMS-Nepal        NEPAL                          >=30             1       34     590
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)          0      154     265
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)          1       12     265
6-24 months   Guatemala BSC    GUATEMALA                      <20              0       39     265
6-24 months   Guatemala BSC    GUATEMALA                      <20              1        3     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30             0       54     265
6-24 months   Guatemala BSC    GUATEMALA                      >=30             1        3     265
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)          0     1551    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)          1      192    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20              0      348    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20              1       55    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30             0      899    3178
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30             1      133    3178
6-24 months   IRC              INDIA                          [20-30)          0      290     410
6-24 months   IRC              INDIA                          [20-30)          1       54     410
6-24 months   IRC              INDIA                          <20              0       32     410
6-24 months   IRC              INDIA                          <20              1        5     410
6-24 months   IRC              INDIA                          >=30             0       24     410
6-24 months   IRC              INDIA                          >=30             1        5     410
6-24 months   JiVitA-3         BANGLADESH                     [20-30)          0     7205   17274
6-24 months   JiVitA-3         BANGLADESH                     [20-30)          1      648   17274
6-24 months   JiVitA-3         BANGLADESH                     <20              0     7438   17274
6-24 months   JiVitA-3         BANGLADESH                     <20              1      732   17274
6-24 months   JiVitA-3         BANGLADESH                     >=30             0     1130   17274
6-24 months   JiVitA-3         BANGLADESH                     >=30             1      121   17274
6-24 months   Keneba           GAMBIA                         [20-30)          0     1167    2686
6-24 months   Keneba           GAMBIA                         [20-30)          1      169    2686
6-24 months   Keneba           GAMBIA                         <20              0      325    2686
6-24 months   Keneba           GAMBIA                         <20              1       39    2686
6-24 months   Keneba           GAMBIA                         >=30             0      794    2686
6-24 months   Keneba           GAMBIA                         >=30             1      192    2686
6-24 months   LCNI-5           MALAWI                         [20-30)          0      339     659
6-24 months   LCNI-5           MALAWI                         [20-30)          1       18     659
6-24 months   LCNI-5           MALAWI                         <20              0       99     659
6-24 months   LCNI-5           MALAWI                         <20              1        7     659
6-24 months   LCNI-5           MALAWI                         >=30             0      185     659
6-24 months   LCNI-5           MALAWI                         >=30             1       11     659
6-24 months   MAL-ED           BANGLADESH                     [20-30)          0      146     239
6-24 months   MAL-ED           BANGLADESH                     [20-30)          1       17     239
6-24 months   MAL-ED           BANGLADESH                     <20              0       26     239
6-24 months   MAL-ED           BANGLADESH                     <20              1        8     239
6-24 months   MAL-ED           BANGLADESH                     >=30             0       32     239
6-24 months   MAL-ED           BANGLADESH                     >=30             1       10     239
6-24 months   MAL-ED           BRAZIL                         [20-30)          0      123     207
6-24 months   MAL-ED           BRAZIL                         [20-30)          1        1     207
6-24 months   MAL-ED           BRAZIL                         <20              0       36     207
6-24 months   MAL-ED           BRAZIL                         <20              1        0     207
6-24 months   MAL-ED           BRAZIL                         >=30             0       46     207
6-24 months   MAL-ED           BRAZIL                         >=30             1        1     207
6-24 months   MAL-ED           INDIA                          [20-30)          0      138     233
6-24 months   MAL-ED           INDIA                          [20-30)          1       40     233
6-24 months   MAL-ED           INDIA                          <20              0       27     233
6-24 months   MAL-ED           INDIA                          <20              1        7     233
6-24 months   MAL-ED           INDIA                          >=30             0       21     233
6-24 months   MAL-ED           INDIA                          >=30             1        0     233
6-24 months   MAL-ED           NEPAL                          [20-30)          0      172     235
6-24 months   MAL-ED           NEPAL                          [20-30)          1       12     235
6-24 months   MAL-ED           NEPAL                          <20              0        4     235
6-24 months   MAL-ED           NEPAL                          <20              1        1     235
6-24 months   MAL-ED           NEPAL                          >=30             0       43     235
6-24 months   MAL-ED           NEPAL                          >=30             1        3     235
6-24 months   MAL-ED           PERU                           [20-30)          0      130     270
6-24 months   MAL-ED           PERU                           [20-30)          1        4     270
6-24 months   MAL-ED           PERU                           <20              0       70     270
6-24 months   MAL-ED           PERU                           <20              1        5     270
6-24 months   MAL-ED           PERU                           >=30             0       59     270
6-24 months   MAL-ED           PERU                           >=30             1        2     270
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)          0      112     259
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)          1       10     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20              0       38     259
6-24 months   MAL-ED           SOUTH AFRICA                   <20              1        4     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30             0       89     259
6-24 months   MAL-ED           SOUTH AFRICA                   >=30             1        6     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0      117     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       12     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       95     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        8     245
6-24 months   NIH-Birth        BANGLADESH                     [20-30)          0      285     540
6-24 months   NIH-Birth        BANGLADESH                     [20-30)          1       75     540
6-24 months   NIH-Birth        BANGLADESH                     <20              0       53     540
6-24 months   NIH-Birth        BANGLADESH                     <20              1        8     540
6-24 months   NIH-Birth        BANGLADESH                     >=30             0       89     540
6-24 months   NIH-Birth        BANGLADESH                     >=30             1       30     540
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)          0      436     730
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)          1       38     730
6-24 months   NIH-Crypto       BANGLADESH                     <20              0      119     730
6-24 months   NIH-Crypto       BANGLADESH                     <20              1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30             0      112     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30             1       11     730
6-24 months   PROBIT           BELARUS                        [20-30)          0    11890   16598
6-24 months   PROBIT           BELARUS                        [20-30)          1        4   16598
6-24 months   PROBIT           BELARUS                        <20              0     1715   16598
6-24 months   PROBIT           BELARUS                        <20              1        0   16598
6-24 months   PROBIT           BELARUS                        >=30             0     2987   16598
6-24 months   PROBIT           BELARUS                        >=30             1        2   16598
6-24 months   PROVIDE          BANGLADESH                     [20-30)          0      389     614
6-24 months   PROVIDE          BANGLADESH                     [20-30)          1       46     614
6-24 months   PROVIDE          BANGLADESH                     <20              0       54     614
6-24 months   PROVIDE          BANGLADESH                     <20              1       14     614
6-24 months   PROVIDE          BANGLADESH                     >=30             0       96     614
6-24 months   PROVIDE          BANGLADESH                     >=30             1       15     614
6-24 months   SAS-CompFeed     INDIA                          [20-30)          0      826    1389
6-24 months   SAS-CompFeed     INDIA                          [20-30)          1      231    1389
6-24 months   SAS-CompFeed     INDIA                          <20              0      144    1389
6-24 months   SAS-CompFeed     INDIA                          <20              1       38    1389
6-24 months   SAS-CompFeed     INDIA                          >=30             0      105    1389
6-24 months   SAS-CompFeed     INDIA                          >=30             1       45    1389
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)          0      183     401
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)          1       96     401
6-24 months   SAS-FoodSuppl    INDIA                          <20              0       25     401
6-24 months   SAS-FoodSuppl    INDIA                          <20              1       11     401
6-24 months   SAS-FoodSuppl    INDIA                          >=30             0       48     401
6-24 months   SAS-FoodSuppl    INDIA                          >=30             1       38     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1231    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1       75    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      133    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        8    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      525    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       30    2002
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)          0     6895   10787
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)          1      297   10787
6-24 months   ZVITAMBO         ZIMBABWE                       <20              0     1641   10787
6-24 months   ZVITAMBO         ZIMBABWE                       <20              1       62   10787
6-24 months   ZVITAMBO         ZIMBABWE                       >=30             0     1808   10787
6-24 months   ZVITAMBO         ZIMBABWE                       >=30             1       84   10787


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/14b18342-5fed-4833-aa48-67e4cec85735/1778682f-db71-4d74-ba5b-a941bcf33287/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14b18342-5fed-4833-aa48-67e4cec85735/1778682f-db71-4d74-ba5b-a941bcf33287/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14b18342-5fed-4833-aa48-67e4cec85735/1778682f-db71-4d74-ba5b-a941bcf33287/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14b18342-5fed-4833-aa48-67e4cec85735/1778682f-db71-4d74-ba5b-a941bcf33287/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2398649   0.1911553   0.2885744
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.2058824   0.0697869   0.3419778
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.1147707   0.0901547   0.1393868
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0881050   0.0471124   0.1290976
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.1142001   0.0856154   0.1427848
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.0949839   0.0851314   0.1048363
0-24 months   COHORTS          INDIA                          <20                  NA                0.1067192   0.0767554   0.1366831
0-24 months   COHORTS          INDIA                          >=30                 NA                0.0993318   0.0834107   0.1152530
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.1725733   0.1551868   0.1899598
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.2076792   0.1659914   0.2493670
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.1893934   0.1635940   0.2151929
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.2840357   0.2417290   0.3263424
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.3211759   0.2393747   0.4029772
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.2911033   0.2055873   0.3766193
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                0.0685714   0.0310612   0.1060816
0-24 months   Guatemala BSC    GUATEMALA                      <20                  NA                0.1063830   0.0180780   0.1946879
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 NA                0.0847458   0.0135546   0.1559369
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1087359   0.0863752   0.1310966
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1257449   0.0809615   0.1705283
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1359078   0.1019872   0.1698284
0-24 months   IRC              INDIA                          [20-30)              NA                0.1831395   0.1422168   0.2240622
0-24 months   IRC              INDIA                          <20                  NA                0.2162162   0.0834096   0.3490229
0-24 months   IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0818963   0.0764317   0.0873609
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0982994   0.0918780   0.1047207
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0794601   0.0680502   0.0908700
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1259493   0.1084745   0.1434241
0-24 months   Keneba           GAMBIA                         <20                  NA                0.1191336   0.0843664   0.1539009
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.1916172   0.1675854   0.2156490
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0494505   0.0271613   0.0717398
0-24 months   LCNI-5           MALAWI                         <20                  NA                0.0648148   0.0183476   0.1112820
0-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0555556   0.0236261   0.0874850
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1080282   0.0624097   0.1536467
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2584206   0.1182438   0.3985975
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.2091984   0.0853301   0.3330666
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.2206235   0.1807918   0.2604552
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.1232877   0.0478090   0.1987664
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.2651515   0.1897888   0.3405142
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0875556   0.0625132   0.1125979
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1073050   0.0531996   0.1614104
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.1129258   0.0593424   0.1665091
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1168907   0.0882070   0.1455745
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.1738418   0.0907685   0.2569152
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1408903   0.0797301   0.2020505
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.2309240   0.1848509   0.2769972
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.2138462   0.1510633   0.2766291
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.2700433   0.2030008   0.3370858
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.3583424   0.3026624   0.4140225
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.3365010   0.1758015   0.4972005
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.3960089   0.2926631   0.4993547
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0486339   0.0379560   0.0593118
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0578088   0.0218340   0.0937837
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0516944   0.0345292   0.0688596
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0434865   0.0391641   0.0478089
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0390536   0.0299516   0.0481556
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0432975   0.0339651   0.0526299
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.0267778   0.0212404   0.0323151
0-6 months    COHORTS          INDIA                          <20                  NA                0.0327855   0.0168511   0.0487198
0-6 months    COHORTS          INDIA                          >=30                 NA                0.0261318   0.0173722   0.0348913
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0182665   0.0121166   0.0244163
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0300723   0.0128204   0.0473242
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0316298   0.0198364   0.0434232
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.0472973   0.0275381   0.0670565
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.0638298   0.0234518   0.1042078
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.0594059   0.0132720   0.1055398
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.0347486   0.0311549   0.0383422
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.0453133   0.0409554   0.0496712
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.0400126   0.0312416   0.0487836
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.0178278   0.0097687   0.0258870
0-6 months    Keneba           GAMBIA                         <20                  NA                0.0288947   0.0117522   0.0460372
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.0380676   0.0258535   0.0502816
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.0707424   0.0475077   0.0939770
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.0314136   0.0078973   0.0549299
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.1130952   0.0651121   0.1610784
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0121440   0.0098493   0.0144388
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.0117382   0.0072371   0.0162392
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0114666   0.0069219   0.0160113
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1925676   0.1475865   0.2375486
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.1470588   0.0278532   0.2662644
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1860465   0.0695783   0.3025147
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.1194564   0.0928805   0.1460322
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0926972   0.0490660   0.1363283
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.1116076   0.0818746   0.1413407
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.0889420   0.0790877   0.0987963
6-24 months   COHORTS          INDIA                          <20                  NA                0.1061358   0.0741013   0.1381704
6-24 months   COHORTS          INDIA                          >=30                 NA                0.0960094   0.0797416   0.1122772
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.1794751   0.1610573   0.1978930
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.2186346   0.1739460   0.2633231
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.1938305   0.1669014   0.2207595
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.3119007   0.2648320   0.3589694
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.3620240   0.2677186   0.4563293
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.3436388   0.2433558   0.4439217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.1082565   0.0859864   0.1305266
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1273673   0.0820844   0.1726501
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1363802   0.1014692   0.1712913
6-24 months   IRC              INDIA                          [20-30)              NA                0.1569767   0.1184877   0.1954657
6-24 months   IRC              INDIA                          <20                  NA                0.1351351   0.0248452   0.2454250
6-24 months   IRC              INDIA                          >=30                 NA                0.1724138   0.0347651   0.3100625
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0844340   0.0775762   0.0912917
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0899739   0.0828150   0.0971328
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0870392   0.0720398   0.1020385
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.1275301   0.1093740   0.1456863
6-24 months   Keneba           GAMBIA                         <20                  NA                0.1069731   0.0719016   0.1420446
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.1898744   0.1649848   0.2147640
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                0.0504202   0.0277052   0.0731351
6-24 months   LCNI-5           MALAWI                         <20                  NA                0.0660377   0.0187242   0.1133513
6-24 months   LCNI-5           MALAWI                         >=30                 NA                0.0561224   0.0238764   0.0883685
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.1042945   0.0572750   0.1513140
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.2352941   0.0924140   0.3781743
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.2380952   0.1090150   0.3671754
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.2083333   0.1663429   0.2503237
6-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.1311475   0.0463587   0.2159364
6-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.2521008   0.1740126   0.3301891
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0806287   0.0560390   0.1052184
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1066944   0.0531442   0.1602447
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.0857567   0.0362727   0.1352407
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.1092285   0.0797963   0.1386607
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.1988663   0.1005783   0.2971542
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1222660   0.0607705   0.1837615
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.2237336   0.1857606   0.2617066
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.2164892   0.1537013   0.2792771
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.2607272   0.1977413   0.3237131
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.3465134   0.2902068   0.4028200
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.3062803   0.1503936   0.4621671
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.4158016   0.2968722   0.5347310
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0574273   0.0448060   0.0700485
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0567376   0.0185433   0.0949319
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0540541   0.0352368   0.0728714
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0431273   0.0381142   0.0481404
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0359049   0.0257997   0.0460101
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0459772   0.0351513   0.0568032


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   COHORTS          INDIA                          NA                   NA                0.0980577   0.0900528   0.1060627
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.0782918   0.0468271   0.1097565
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1195721   0.0998202   0.1393239
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888451   0.0849346   0.0927557
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1501575   0.1370563   0.1632587
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0537313   0.0366447   0.0708180
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2186495   0.1861408   0.2511582
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500842   0.0413120   0.0588564
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424338   0.0390831   0.0457845
0-6 months    COHORTS          INDIA                          NA                   NA                0.0274456   0.0229617   0.0319295
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396941   0.0371916   0.0421966
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0282787   0.0216999   0.0348574
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120944   0.0102712   0.0139177
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300942
6-24 months   COHORTS          INDIA                          NA                   NA                0.0928355   0.0847544   0.1009166
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1195721   0.0998202   0.1393239
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0868936   0.0822329   0.0915543
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1489203   0.1354543   0.1623863
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0546282   0.0372644   0.0719920
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2092593   0.1749182   0.2436003
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410680   0.0373229   0.0448131


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8583264   0.4298605   1.7138681
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.7756305   0.4016362   1.4978796
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.7676609   0.4599088   1.2813481
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9950280   0.7157758   1.3832273
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1235513   0.8334296   1.5146660
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0457760   0.8651618   1.2640958
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.2034261   0.9623127   1.5049519
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0974667   0.9277964   1.2981653
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.1307590   0.8421557   1.5182654
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0248826   0.7376611   1.4239391
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.5514184   0.5741090   4.1924077
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.2358757   0.4535355   3.3677377
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1564248   0.8220402   1.6268285
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2498893   0.9321705   1.6758986
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           1.1806092   0.6141094   2.2696901
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.9414340   0.4109046   2.1569435
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2002908   1.0965770   1.3138139
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           0.9702527   0.8293504   1.1350935
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9458853   0.6851832   1.3057807
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.5213830   1.2628645   1.8328225
0-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         <20                  [20-30)           1.3106996   0.5619843   3.0569064
0-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.1234568   0.5411892   2.3321885
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           2.3921593   1.2038762   4.7533344
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.9365164   0.9344386   4.0132075
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.5588148   0.2951655   1.0579624
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2018281   0.8582375   1.6829732
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.2255650   0.6864047   2.1882276
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.2897616   0.7417462   2.2426605
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.4872166   0.8697511   2.5430418
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.2053164   0.7322607   1.9839759
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9260458   0.6607641   1.2978321
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1694030   0.9968804   1.3717828
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.9390488   0.5686872   1.5506111
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.1051130   0.8162135   1.4962689
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.1886537   0.6144862   2.2993155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0629297   0.7138235   1.5827718
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8980634   0.6972767   1.1566682
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9956549   0.7855945   1.2618833
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           1.2243540   0.7221309   2.0758602
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9758754   0.6583461   1.4465536
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.6463121   0.8467826   3.2007549
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.7315769   1.0479367   2.8612019
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.3495441   0.6323446   2.8801846
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2560113   0.5200216   3.0336517
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.3040337   1.1332439   1.5005630
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1514891   0.9024400   1.4692690
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.6207611   0.7674665   3.4227769
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           2.1352861   1.2301708   3.7063528
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.4440566   0.2286595   0.8623576
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.5986919   1.0804462   2.3655188
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9665795   0.6303503   1.4821536
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9442192   0.6086668   1.4647584
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.7636739   0.3285070   1.7752978
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9661363   0.4952828   1.8846189
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.7759917   0.4610190   1.3061569
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9342960   0.6603612   1.3218658
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.1933150   0.8657985   1.6447253
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0794608   0.8829099   1.3197674
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.2181886   0.9702235   1.5295275
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0799850   0.9099515   1.2817910
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.1607026   0.8592479   1.5679182
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1017568   0.7933467   1.5300600
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.1765320   0.8396661   1.6485453
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.2597878   0.9318174   1.7031934
6-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          <20                  [20-30)           0.8608609   0.3671435   2.0185061
6-24 months   IRC              INDIA                          >=30                 [20-30)           1.0983397   0.4764631   2.5318856
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0656126   0.9550290   1.1890008
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0308546   0.8513973   1.2481379
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.8388067   0.5870344   1.1985614
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.4888587   1.2277508   1.8054968
6-24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         <20                  [20-30)           1.3097484   0.5618623   3.0531342
6-24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.1130952   0.5363418   2.3100584
6-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           2.2560554   1.0589904   4.8062623
6-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           2.2829132   1.1278960   4.6207207
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6295082   0.3198124   1.2391032
6-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.2100840   0.8362207   1.7510969
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.3232816   0.7353386   2.3813168
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0636007   0.5540144   2.0419081
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.8206444   1.0375235   3.1948634
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1193598   0.6331323   1.9789962
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.9676203   0.7159529   1.3077522
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1653465   0.9676355   1.4034544
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           0.8838917   0.5187062   1.5061793
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.1999582   0.8643104   1.6659520
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9879905   0.4866427   2.0058358
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9412613   0.6236126   1.4207101
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8325328   0.6140861   1.1286866
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0660819   0.8201554   1.3857502


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0093019   -0.0302523   0.0116486
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0044053   -0.0216765   0.0128659
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0030738   -0.0030856   0.0092333
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0113347   -0.0001070   0.0227765
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0104249   -0.0152834   0.0361333
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0097204   -0.0156673   0.0351081
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0108362   -0.0022105   0.0238829
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0022263   -0.0145899   0.0190425
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0069488    0.0028400   0.0110577
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0242082    0.0108827   0.0375336
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0042808   -0.0114972   0.0200588
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0402608    0.0067064   0.0738152
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0019740   -0.0246909   0.0207429
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0061120   -0.0095574   0.0217814
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0116807   -0.0057958   0.0291572
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0010654   -0.0100644   0.0121952
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0124710   -0.0189786   0.0439205
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0014503   -0.0048905   0.0077911
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010527   -0.0036629   0.0015576
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0006678   -0.0027067   0.0040423
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0053866    0.0007082   0.0100650
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0051808   -0.0076210   0.0179826
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0049455    0.0021437   0.0077474
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0104508    0.0032340   0.0176677
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0002636   -0.0057992   0.0052719
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0000496   -0.0014268   0.0013276
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0049000   -0.0245550   0.0147550
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0071525   -0.0256886   0.0113836
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0038935   -0.0023003   0.0100873
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0114080   -0.0007313   0.0235473
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0135230   -0.0152814   0.0423274
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0113155   -0.0018402   0.0244713
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0008792   -0.0161369   0.0143785
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0024596   -0.0027498   0.0076691
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0213902    0.0076666   0.0351137
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0042081   -0.0118680   0.0202841
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0421490    0.0073244   0.0769737
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0009259   -0.0233964   0.0252482
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0056727   -0.0097986   0.0211440
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0129213   -0.0052372   0.0310798
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0023283   -0.0070426   0.0116992
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0150826   -0.0166942   0.0468594
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0009837   -0.0083121   0.0063447
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0020593   -0.0051572   0.0010385


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0403441   -0.1351701   0.0465606
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0399159   -0.2086134   0.1052349
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0313473   -0.0334669   0.0920967
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0616327   -0.0025911   0.1217424
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0354034   -0.0559893   0.1188864
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1241558   -0.2635432   0.3928953
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0906246   -0.0244817   0.1927980
0-24 months   IRC              INDIA                          [20-30)              NA                 0.0120104   -0.0829843   0.0986726
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0782130    0.0309115   0.1232056
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1612185    0.0683373   0.2448401
0-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0796703   -0.2648804   0.3303662
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.2715022    0.0210570   0.4578754
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0090281   -0.1184575   0.0896948
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0652520   -0.1173775   0.2180316
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0908499   -0.0547659   0.2163627
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0045924   -0.0449161   0.0517552
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0336314   -0.0550679   0.1148737
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0289572   -0.1062216   0.1476173
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0248069   -0.0881599   0.0348577
0-6 months    COHORTS          INDIA                          [20-30)              NA                 0.0243333   -0.1066515   0.1398146
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.2277344    0.0111678   0.3968703
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0987237   -0.1790339   0.3110470
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.1245907    0.0513348   0.1921897
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.3695660    0.0748552   0.5703949
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0037406   -0.0854510   0.0718188
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0041005   -0.1246742   0.1035468
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0261100   -0.1362897   0.0733861
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0636889   -0.2417707   0.0888542
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0419399   -0.0270067   0.1062579
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0597645   -0.0059359   0.1211739
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0415550   -0.0512075   0.1261318
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0946336   -0.0213204   0.1974229
6-24 months   IRC              INDIA                          [20-30)              NA                -0.0056323   -0.1082792   0.0875077
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0283061   -0.0334938   0.0864105
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1436351    0.0468887   0.2305611
6-24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0770308   -0.2683220   0.3283471
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.2878177    0.0231064   0.4807995
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0044248   -0.1188612   0.1141260
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0657312   -0.1312102   0.2283855
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.1057826   -0.0541255   0.2414330
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0102993   -0.0323658   0.0512012
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0417112   -0.0503956   0.1257414
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0174281   -0.1558754   0.1044365
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0501447   -0.1281803   0.0224931
