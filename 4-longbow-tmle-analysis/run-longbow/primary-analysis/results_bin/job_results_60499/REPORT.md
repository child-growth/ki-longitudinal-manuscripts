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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        mage       pers_wast   n_cell       n
------------  ---------------  -----------------------------  --------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)            0      277     373
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)            1       19     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                0       33     373
0-24 months   CMC-V-BCS-2002   INDIA                          <20                1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30               0       40     373
0-24 months   CMC-V-BCS-2002   INDIA                          >=30               1        3     373
0-24 months   COHORTS          GUATEMALA                      [20-30)            0      499    1053
0-24 months   COHORTS          GUATEMALA                      [20-30)            1       16    1053
0-24 months   COHORTS          GUATEMALA                      <20                0      128    1053
0-24 months   COHORTS          GUATEMALA                      <20                1        5    1053
0-24 months   COHORTS          GUATEMALA                      >=30               0      390    1053
0-24 months   COHORTS          GUATEMALA                      >=30               1       15    1053
0-24 months   COHORTS          INDIA                          [20-30)            0     2483    4068
0-24 months   COHORTS          INDIA                          [20-30)            1      254    4068
0-24 months   COHORTS          INDIA                          <20                0      233    4068
0-24 months   COHORTS          INDIA                          <20                1       40    4068
0-24 months   COHORTS          INDIA                          >=30               0      947    4068
0-24 months   COHORTS          INDIA                          >=30               1      111    4068
0-24 months   COHORTS          PHILIPPINES                    [20-30)            0     1589    2811
0-24 months   COHORTS          PHILIPPINES                    [20-30)            1       87    2811
0-24 months   COHORTS          PHILIPPINES                    <20                0      327    2811
0-24 months   COHORTS          PHILIPPINES                    <20                1       17    2811
0-24 months   COHORTS          PHILIPPINES                    >=30               0      751    2811
0-24 months   COHORTS          PHILIPPINES                    >=30               1       40    2811
0-24 months   EE               PAKISTAN                       [20-30)            0      148     374
0-24 months   EE               PAKISTAN                       [20-30)            1       13     374
0-24 months   EE               PAKISTAN                       <20                0        1     374
0-24 months   EE               PAKISTAN                       <20                1        0     374
0-24 months   EE               PAKISTAN                       >=30               0      192     374
0-24 months   EE               PAKISTAN                       >=30               1       20     374
0-24 months   GMS-Nepal        NEPAL                          [20-30)            0      339     597
0-24 months   GMS-Nepal        NEPAL                          [20-30)            1       48     597
0-24 months   GMS-Nepal        NEPAL                          <20                0      101     597
0-24 months   GMS-Nepal        NEPAL                          <20                1       20     597
0-24 months   GMS-Nepal        NEPAL                          >=30               0       77     597
0-24 months   GMS-Nepal        NEPAL                          >=30               1       12     597
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)            0      159     250
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)            1        2     250
0-24 months   Guatemala BSC    GUATEMALA                      <20                0       35     250
0-24 months   Guatemala BSC    GUATEMALA                      <20                1        1     250
0-24 months   Guatemala BSC    GUATEMALA                      >=30               0       52     250
0-24 months   Guatemala BSC    GUATEMALA                      >=30               1        1     250
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)            0      800    1633
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)            1       82    1633
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                0      171    1633
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                1       29    1633
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
0-24 months   IRC              INDIA                          [20-30)            0      307     410
0-24 months   IRC              INDIA                          [20-30)            1       37     410
0-24 months   IRC              INDIA                          <20                0       33     410
0-24 months   IRC              INDIA                          <20                1        4     410
0-24 months   IRC              INDIA                          >=30               0       22     410
0-24 months   IRC              INDIA                          >=30               1        7     410
0-24 months   JiVitA-3         BANGLADESH                     [20-30)            0     6922   15797
0-24 months   JiVitA-3         BANGLADESH                     [20-30)            1      397   15797
0-24 months   JiVitA-3         BANGLADESH                     <20                0     6890   15797
0-24 months   JiVitA-3         BANGLADESH                     <20                1      420   15797
0-24 months   JiVitA-3         BANGLADESH                     >=30               0     1088   15797
0-24 months   JiVitA-3         BANGLADESH                     >=30               1       80   15797
0-24 months   Keneba           GAMBIA                         [20-30)            0     1104    2422
0-24 months   Keneba           GAMBIA                         [20-30)            1       56    2422
0-24 months   Keneba           GAMBIA                         <20                0      336    2422
0-24 months   Keneba           GAMBIA                         <20                1       18    2422
0-24 months   Keneba           GAMBIA                         >=30               0      839    2422
0-24 months   Keneba           GAMBIA                         >=30               1       69    2422
0-24 months   LCNI-5           MALAWI                         [20-30)            0      311     581
0-24 months   LCNI-5           MALAWI                         [20-30)            1        1     581
0-24 months   LCNI-5           MALAWI                         <20                0       93     581
0-24 months   LCNI-5           MALAWI                         <20                1        2     581
0-24 months   LCNI-5           MALAWI                         >=30               0      172     581
0-24 months   LCNI-5           MALAWI                         >=30               1        2     581
0-24 months   MAL-ED           BANGLADESH                     [20-30)            0      162     248
0-24 months   MAL-ED           BANGLADESH                     [20-30)            1        7     248
0-24 months   MAL-ED           BANGLADESH                     <20                0       31     248
0-24 months   MAL-ED           BANGLADESH                     <20                1        4     248
0-24 months   MAL-ED           BANGLADESH                     >=30               0       42     248
0-24 months   MAL-ED           BANGLADESH                     >=30               1        2     248
0-24 months   MAL-ED           BRAZIL                         [20-30)            0      127     218
0-24 months   MAL-ED           BRAZIL                         [20-30)            1        1     218
0-24 months   MAL-ED           BRAZIL                         <20                0       40     218
0-24 months   MAL-ED           BRAZIL                         <20                1        0     218
0-24 months   MAL-ED           BRAZIL                         >=30               0       49     218
0-24 months   MAL-ED           BRAZIL                         >=30               1        1     218
0-24 months   MAL-ED           INDIA                          [20-30)            0      165     239
0-24 months   MAL-ED           INDIA                          [20-30)            1       19     239
0-24 months   MAL-ED           INDIA                          <20                0       32     239
0-24 months   MAL-ED           INDIA                          <20                1        2     239
0-24 months   MAL-ED           INDIA                          >=30               0       21     239
0-24 months   MAL-ED           INDIA                          >=30               1        0     239
0-24 months   MAL-ED           NEPAL                          [20-30)            0      183     238
0-24 months   MAL-ED           NEPAL                          [20-30)            1        4     238
0-24 months   MAL-ED           NEPAL                          <20                0        5     238
0-24 months   MAL-ED           NEPAL                          <20                1        0     238
0-24 months   MAL-ED           NEPAL                          >=30               0       46     238
0-24 months   MAL-ED           NEPAL                          >=30               1        0     238
0-24 months   MAL-ED           PERU                           [20-30)            0      143     284
0-24 months   MAL-ED           PERU                           [20-30)            1        0     284
0-24 months   MAL-ED           PERU                           <20                0       77     284
0-24 months   MAL-ED           PERU                           <20                1        1     284
0-24 months   MAL-ED           PERU                           >=30               0       63     284
0-24 months   MAL-ED           PERU                           >=30               1        0     284
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)            0      135     275
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)            1        1     275
0-24 months   MAL-ED           SOUTH AFRICA                   <20                0       42     275
0-24 months   MAL-ED           SOUTH AFRICA                   <20                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   >=30               0       96     275
0-24 months   MAL-ED           SOUTH AFRICA                   >=30               1        1     275
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-24 months   NIH-Birth        BANGLADESH                     [20-30)            0      322     532
0-24 months   NIH-Birth        BANGLADESH                     [20-30)            1       36     532
0-24 months   NIH-Birth        BANGLADESH                     <20                0       58     532
0-24 months   NIH-Birth        BANGLADESH                     <20                1        3     532
0-24 months   NIH-Birth        BANGLADESH                     >=30               0      105     532
0-24 months   NIH-Birth        BANGLADESH                     >=30               1        8     532
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)            0      458     730
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)            1       16     730
0-24 months   NIH-Crypto       BANGLADESH                     <20                0      128     730
0-24 months   NIH-Crypto       BANGLADESH                     <20                1        5     730
0-24 months   NIH-Crypto       BANGLADESH                     >=30               0      118     730
0-24 months   NIH-Crypto       BANGLADESH                     >=30               1        5     730
0-24 months   PROBIT           BELARUS                        [20-30)            0    11787   16583
0-24 months   PROBIT           BELARUS                        [20-30)            1       98   16583
0-24 months   PROBIT           BELARUS                        <20                0     1704   16583
0-24 months   PROBIT           BELARUS                        <20                1       11   16583
0-24 months   PROBIT           BELARUS                        >=30               0     2958   16583
0-24 months   PROBIT           BELARUS                        >=30               1       25   16583
0-24 months   PROVIDE          BANGLADESH                     [20-30)            0      440     641
0-24 months   PROVIDE          BANGLADESH                     [20-30)            1        9     641
0-24 months   PROVIDE          BANGLADESH                     <20                0       73     641
0-24 months   PROVIDE          BANGLADESH                     <20                1        1     641
0-24 months   PROVIDE          BANGLADESH                     >=30               0      113     641
0-24 months   PROVIDE          BANGLADESH                     >=30               1        5     641
0-24 months   SAS-CompFeed     INDIA                          [20-30)            0      951    1366
0-24 months   SAS-CompFeed     INDIA                          [20-30)            1       89    1366
0-24 months   SAS-CompFeed     INDIA                          <20                0      169    1366
0-24 months   SAS-CompFeed     INDIA                          <20                1       11    1366
0-24 months   SAS-CompFeed     INDIA                          >=30               0      132    1366
0-24 months   SAS-CompFeed     INDIA                          >=30               1       14    1366
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)            0      222     375
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)            1       36     375
0-24 months   SAS-FoodSuppl    INDIA                          <20                0       28     375
0-24 months   SAS-FoodSuppl    INDIA                          <20                1        5     375
0-24 months   SAS-FoodSuppl    INDIA                          >=30               0       60     375
0-24 months   SAS-FoodSuppl    INDIA                          >=30               1       24     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369    2148
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35    2148
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147    2148
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2148
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574    2148
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17    2148
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)            0     6213    9505
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)            1      118    9505
0-24 months   ZVITAMBO         ZIMBABWE                       <20                0     1421    9505
0-24 months   ZVITAMBO         ZIMBABWE                       <20                1       20    9505
0-24 months   ZVITAMBO         ZIMBABWE                       >=30               0     1704    9505
0-24 months   ZVITAMBO         ZIMBABWE                       >=30               1       29    9505
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)            0      242     358
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)            1       42     358
0-6 months    CMC-V-BCS-2002   INDIA                          <20                0       29     358
0-6 months    CMC-V-BCS-2002   INDIA                          <20                1        4     358
0-6 months    CMC-V-BCS-2002   INDIA                          >=30               0       37     358
0-6 months    CMC-V-BCS-2002   INDIA                          >=30               1        4     358
0-6 months    COHORTS          PHILIPPINES                    [20-30)            0      476     853
0-6 months    COHORTS          PHILIPPINES                    [20-30)            1       31     853
0-6 months    COHORTS          PHILIPPINES                    <20                0       83     853
0-6 months    COHORTS          PHILIPPINES                    <20                1        6     853
0-6 months    COHORTS          PHILIPPINES                    >=30               0      242     853
0-6 months    COHORTS          PHILIPPINES                    >=30               1       15     853
0-6 months    EE               PAKISTAN                       [20-30)            0      149     368
0-6 months    EE               PAKISTAN                       [20-30)            1       11     368
0-6 months    EE               PAKISTAN                       <20                0        1     368
0-6 months    EE               PAKISTAN                       <20                1        0     368
0-6 months    EE               PAKISTAN                       >=30               0      193     368
0-6 months    EE               PAKISTAN                       >=30               1       14     368
0-6 months    GMS-Nepal        NEPAL                          [20-30)            0      329     567
0-6 months    GMS-Nepal        NEPAL                          [20-30)            1       38     567
0-6 months    GMS-Nepal        NEPAL                          <20                0      101     567
0-6 months    GMS-Nepal        NEPAL                          <20                1       12     567
0-6 months    GMS-Nepal        NEPAL                          >=30               0       75     567
0-6 months    GMS-Nepal        NEPAL                          >=30               1       12     567
0-6 months    IRC              INDIA                          [20-30)            0      285     402
0-6 months    IRC              INDIA                          [20-30)            1       53     402
0-6 months    IRC              INDIA                          <20                0       30     402
0-6 months    IRC              INDIA                          <20                1        5     402
0-6 months    IRC              INDIA                          >=30               0       23     402
0-6 months    IRC              INDIA                          >=30               1        6     402
0-6 months    JiVitA-3         BANGLADESH                     [20-30)            0       21      50
0-6 months    JiVitA-3         BANGLADESH                     [20-30)            1        1      50
0-6 months    JiVitA-3         BANGLADESH                     <20                0       24      50
0-6 months    JiVitA-3         BANGLADESH                     <20                1        1      50
0-6 months    JiVitA-3         BANGLADESH                     >=30               0        3      50
0-6 months    JiVitA-3         BANGLADESH                     >=30               1        0      50
0-6 months    Keneba           GAMBIA                         [20-30)            0      943    2039
0-6 months    Keneba           GAMBIA                         [20-30)            1       14    2039
0-6 months    Keneba           GAMBIA                         <20                0      293    2039
0-6 months    Keneba           GAMBIA                         <20                1        8    2039
0-6 months    Keneba           GAMBIA                         >=30               0      740    2039
0-6 months    Keneba           GAMBIA                         >=30               1       41    2039
0-6 months    MAL-ED           BANGLADESH                     [20-30)            0      164     248
0-6 months    MAL-ED           BANGLADESH                     [20-30)            1        5     248
0-6 months    MAL-ED           BANGLADESH                     <20                0       33     248
0-6 months    MAL-ED           BANGLADESH                     <20                1        2     248
0-6 months    MAL-ED           BANGLADESH                     >=30               0       44     248
0-6 months    MAL-ED           BANGLADESH                     >=30               1        0     248
0-6 months    MAL-ED           BRAZIL                         [20-30)            0      128     218
0-6 months    MAL-ED           BRAZIL                         [20-30)            1        0     218
0-6 months    MAL-ED           BRAZIL                         <20                0       40     218
0-6 months    MAL-ED           BRAZIL                         <20                1        0     218
0-6 months    MAL-ED           BRAZIL                         >=30               0       49     218
0-6 months    MAL-ED           BRAZIL                         >=30               1        1     218
0-6 months    MAL-ED           INDIA                          [20-30)            0      168     238
0-6 months    MAL-ED           INDIA                          [20-30)            1       15     238
0-6 months    MAL-ED           INDIA                          <20                0       32     238
0-6 months    MAL-ED           INDIA                          <20                1        2     238
0-6 months    MAL-ED           INDIA                          >=30               0       19     238
0-6 months    MAL-ED           INDIA                          >=30               1        2     238
0-6 months    MAL-ED           NEPAL                          [20-30)            0      180     238
0-6 months    MAL-ED           NEPAL                          [20-30)            1        7     238
0-6 months    MAL-ED           NEPAL                          <20                0        5     238
0-6 months    MAL-ED           NEPAL                          <20                1        0     238
0-6 months    MAL-ED           NEPAL                          >=30               0       46     238
0-6 months    MAL-ED           NEPAL                          >=30               1        0     238
0-6 months    MAL-ED           PERU                           [20-30)            0      143     284
0-6 months    MAL-ED           PERU                           [20-30)            1        0     284
0-6 months    MAL-ED           PERU                           <20                0       78     284
0-6 months    MAL-ED           PERU                           <20                1        0     284
0-6 months    MAL-ED           PERU                           >=30               0       63     284
0-6 months    MAL-ED           PERU                           >=30               1        0     284
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)            0      135     274
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)            1        1     274
0-6 months    MAL-ED           SOUTH AFRICA                   <20                0       41     274
0-6 months    MAL-ED           SOUTH AFRICA                   <20                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   >=30               0       96     274
0-6 months    MAL-ED           SOUTH AFRICA                   >=30               1        1     274
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-6 months    NIH-Birth        BANGLADESH                     [20-30)            0      101     168
0-6 months    NIH-Birth        BANGLADESH                     [20-30)            1       10     168
0-6 months    NIH-Birth        BANGLADESH                     <20                0       20     168
0-6 months    NIH-Birth        BANGLADESH                     <20                1        0     168
0-6 months    NIH-Birth        BANGLADESH                     >=30               0       36     168
0-6 months    NIH-Birth        BANGLADESH                     >=30               1        1     168
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)            0      164     250
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)            1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     <20                0       40     250
0-6 months    NIH-Crypto       BANGLADESH                     <20                1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     >=30               0       41     250
0-6 months    NIH-Crypto       BANGLADESH                     >=30               1        3     250
0-6 months    PROBIT           BELARUS                        [20-30)            0     8878   13534
0-6 months    PROBIT           BELARUS                        [20-30)            1      812   13534
0-6 months    PROBIT           BELARUS                        <20                0     1281   13534
0-6 months    PROBIT           BELARUS                        <20                1       94   13534
0-6 months    PROBIT           BELARUS                        >=30               0     2278   13534
0-6 months    PROBIT           BELARUS                        >=30               1      191   13534
0-6 months    PROVIDE          BANGLADESH                     [20-30)            0      438     638
0-6 months    PROVIDE          BANGLADESH                     [20-30)            1       10     638
0-6 months    PROVIDE          BANGLADESH                     <20                0       73     638
0-6 months    PROVIDE          BANGLADESH                     <20                1        0     638
0-6 months    PROVIDE          BANGLADESH                     >=30               0      113     638
0-6 months    PROVIDE          BANGLADESH                     >=30               1        4     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1311    2044
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       27    2044
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      137    2044
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2044
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      544    2044
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       19    2044
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)            0      411     630
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)            1       11     630
0-6 months    ZVITAMBO         ZIMBABWE                       <20                0      100     630
0-6 months    ZVITAMBO         ZIMBABWE                       <20                1        1     630
0-6 months    ZVITAMBO         ZIMBABWE                       >=30               0      105     630
0-6 months    ZVITAMBO         ZIMBABWE                       >=30               1        2     630
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)            0      277     373
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)            1       19     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                0       33     373
6-24 months   CMC-V-BCS-2002   INDIA                          <20                1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30               0       40     373
6-24 months   CMC-V-BCS-2002   INDIA                          >=30               1        3     373
6-24 months   COHORTS          GUATEMALA                      [20-30)            0      499    1053
6-24 months   COHORTS          GUATEMALA                      [20-30)            1       16    1053
6-24 months   COHORTS          GUATEMALA                      <20                0      128    1053
6-24 months   COHORTS          GUATEMALA                      <20                1        5    1053
6-24 months   COHORTS          GUATEMALA                      >=30               0      390    1053
6-24 months   COHORTS          GUATEMALA                      >=30               1       15    1053
6-24 months   COHORTS          INDIA                          [20-30)            0     2483    4068
6-24 months   COHORTS          INDIA                          [20-30)            1      254    4068
6-24 months   COHORTS          INDIA                          <20                0      233    4068
6-24 months   COHORTS          INDIA                          <20                1       40    4068
6-24 months   COHORTS          INDIA                          >=30               0      947    4068
6-24 months   COHORTS          INDIA                          >=30               1      111    4068
6-24 months   COHORTS          PHILIPPINES                    [20-30)            0     1589    2811
6-24 months   COHORTS          PHILIPPINES                    [20-30)            1       87    2811
6-24 months   COHORTS          PHILIPPINES                    <20                0      327    2811
6-24 months   COHORTS          PHILIPPINES                    <20                1       17    2811
6-24 months   COHORTS          PHILIPPINES                    >=30               0      751    2811
6-24 months   COHORTS          PHILIPPINES                    >=30               1       40    2811
6-24 months   EE               PAKISTAN                       [20-30)            0      148     374
6-24 months   EE               PAKISTAN                       [20-30)            1       13     374
6-24 months   EE               PAKISTAN                       <20                0        1     374
6-24 months   EE               PAKISTAN                       <20                1        0     374
6-24 months   EE               PAKISTAN                       >=30               0      192     374
6-24 months   EE               PAKISTAN                       >=30               1       20     374
6-24 months   GMS-Nepal        NEPAL                          [20-30)            0      339     597
6-24 months   GMS-Nepal        NEPAL                          [20-30)            1       48     597
6-24 months   GMS-Nepal        NEPAL                          <20                0      101     597
6-24 months   GMS-Nepal        NEPAL                          <20                1       20     597
6-24 months   GMS-Nepal        NEPAL                          >=30               0       77     597
6-24 months   GMS-Nepal        NEPAL                          >=30               1       12     597
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)            0      159     250
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)            1        2     250
6-24 months   Guatemala BSC    GUATEMALA                      <20                0       35     250
6-24 months   Guatemala BSC    GUATEMALA                      <20                1        1     250
6-24 months   Guatemala BSC    GUATEMALA                      >=30               0       52     250
6-24 months   Guatemala BSC    GUATEMALA                      >=30               1        1     250
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)            0      800    1633
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)            1       82    1633
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                0      171    1633
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                1       29    1633
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
6-24 months   IRC              INDIA                          [20-30)            0      307     410
6-24 months   IRC              INDIA                          [20-30)            1       37     410
6-24 months   IRC              INDIA                          <20                0       33     410
6-24 months   IRC              INDIA                          <20                1        4     410
6-24 months   IRC              INDIA                          >=30               0       22     410
6-24 months   IRC              INDIA                          >=30               1        7     410
6-24 months   JiVitA-3         BANGLADESH                     [20-30)            0     6922   15797
6-24 months   JiVitA-3         BANGLADESH                     [20-30)            1      397   15797
6-24 months   JiVitA-3         BANGLADESH                     <20                0     6890   15797
6-24 months   JiVitA-3         BANGLADESH                     <20                1      420   15797
6-24 months   JiVitA-3         BANGLADESH                     >=30               0     1088   15797
6-24 months   JiVitA-3         BANGLADESH                     >=30               1       80   15797
6-24 months   Keneba           GAMBIA                         [20-30)            0     1104    2422
6-24 months   Keneba           GAMBIA                         [20-30)            1       56    2422
6-24 months   Keneba           GAMBIA                         <20                0      336    2422
6-24 months   Keneba           GAMBIA                         <20                1       18    2422
6-24 months   Keneba           GAMBIA                         >=30               0      839    2422
6-24 months   Keneba           GAMBIA                         >=30               1       69    2422
6-24 months   LCNI-5           MALAWI                         [20-30)            0      311     581
6-24 months   LCNI-5           MALAWI                         [20-30)            1        1     581
6-24 months   LCNI-5           MALAWI                         <20                0       93     581
6-24 months   LCNI-5           MALAWI                         <20                1        2     581
6-24 months   LCNI-5           MALAWI                         >=30               0      172     581
6-24 months   LCNI-5           MALAWI                         >=30               1        2     581
6-24 months   MAL-ED           BANGLADESH                     [20-30)            0      162     248
6-24 months   MAL-ED           BANGLADESH                     [20-30)            1        7     248
6-24 months   MAL-ED           BANGLADESH                     <20                0       31     248
6-24 months   MAL-ED           BANGLADESH                     <20                1        4     248
6-24 months   MAL-ED           BANGLADESH                     >=30               0       42     248
6-24 months   MAL-ED           BANGLADESH                     >=30               1        2     248
6-24 months   MAL-ED           BRAZIL                         [20-30)            0      127     218
6-24 months   MAL-ED           BRAZIL                         [20-30)            1        1     218
6-24 months   MAL-ED           BRAZIL                         <20                0       40     218
6-24 months   MAL-ED           BRAZIL                         <20                1        0     218
6-24 months   MAL-ED           BRAZIL                         >=30               0       49     218
6-24 months   MAL-ED           BRAZIL                         >=30               1        1     218
6-24 months   MAL-ED           INDIA                          [20-30)            0      165     239
6-24 months   MAL-ED           INDIA                          [20-30)            1       19     239
6-24 months   MAL-ED           INDIA                          <20                0       32     239
6-24 months   MAL-ED           INDIA                          <20                1        2     239
6-24 months   MAL-ED           INDIA                          >=30               0       21     239
6-24 months   MAL-ED           INDIA                          >=30               1        0     239
6-24 months   MAL-ED           NEPAL                          [20-30)            0      183     238
6-24 months   MAL-ED           NEPAL                          [20-30)            1        4     238
6-24 months   MAL-ED           NEPAL                          <20                0        5     238
6-24 months   MAL-ED           NEPAL                          <20                1        0     238
6-24 months   MAL-ED           NEPAL                          >=30               0       46     238
6-24 months   MAL-ED           NEPAL                          >=30               1        0     238
6-24 months   MAL-ED           PERU                           [20-30)            0      143     284
6-24 months   MAL-ED           PERU                           [20-30)            1        0     284
6-24 months   MAL-ED           PERU                           <20                0       77     284
6-24 months   MAL-ED           PERU                           <20                1        1     284
6-24 months   MAL-ED           PERU                           >=30               0       63     284
6-24 months   MAL-ED           PERU                           >=30               1        0     284
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)            0      135     275
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)            1        1     275
6-24 months   MAL-ED           SOUTH AFRICA                   <20                0       42     275
6-24 months   MAL-ED           SOUTH AFRICA                   <20                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   >=30               0       96     275
6-24 months   MAL-ED           SOUTH AFRICA                   >=30               1        1     275
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
6-24 months   NIH-Birth        BANGLADESH                     [20-30)            0      322     532
6-24 months   NIH-Birth        BANGLADESH                     [20-30)            1       36     532
6-24 months   NIH-Birth        BANGLADESH                     <20                0       58     532
6-24 months   NIH-Birth        BANGLADESH                     <20                1        3     532
6-24 months   NIH-Birth        BANGLADESH                     >=30               0      105     532
6-24 months   NIH-Birth        BANGLADESH                     >=30               1        8     532
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)            0      458     730
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)            1       16     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                0      128     730
6-24 months   NIH-Crypto       BANGLADESH                     <20                1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30               0      118     730
6-24 months   NIH-Crypto       BANGLADESH                     >=30               1        5     730
6-24 months   PROBIT           BELARUS                        [20-30)            0    11787   16583
6-24 months   PROBIT           BELARUS                        [20-30)            1       98   16583
6-24 months   PROBIT           BELARUS                        <20                0     1704   16583
6-24 months   PROBIT           BELARUS                        <20                1       11   16583
6-24 months   PROBIT           BELARUS                        >=30               0     2958   16583
6-24 months   PROBIT           BELARUS                        >=30               1       25   16583
6-24 months   PROVIDE          BANGLADESH                     [20-30)            0      440     641
6-24 months   PROVIDE          BANGLADESH                     [20-30)            1        9     641
6-24 months   PROVIDE          BANGLADESH                     <20                0       73     641
6-24 months   PROVIDE          BANGLADESH                     <20                1        1     641
6-24 months   PROVIDE          BANGLADESH                     >=30               0      113     641
6-24 months   PROVIDE          BANGLADESH                     >=30               1        5     641
6-24 months   SAS-CompFeed     INDIA                          [20-30)            0      951    1366
6-24 months   SAS-CompFeed     INDIA                          [20-30)            1       89    1366
6-24 months   SAS-CompFeed     INDIA                          <20                0      169    1366
6-24 months   SAS-CompFeed     INDIA                          <20                1       11    1366
6-24 months   SAS-CompFeed     INDIA                          >=30               0      132    1366
6-24 months   SAS-CompFeed     INDIA                          >=30               1       14    1366
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)            0      222     375
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)            1       36     375
6-24 months   SAS-FoodSuppl    INDIA                          <20                0       28     375
6-24 months   SAS-FoodSuppl    INDIA                          <20                1        5     375
6-24 months   SAS-FoodSuppl    INDIA                          >=30               0       60     375
6-24 months   SAS-FoodSuppl    INDIA                          >=30               1       24     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369    2148
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35    2148
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147    2148
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2148
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574    2148
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17    2148
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)            0     6213    9505
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)            1      118    9505
6-24 months   ZVITAMBO         ZIMBABWE                       <20                0     1421    9505
6-24 months   ZVITAMBO         ZIMBABWE                       <20                1       20    9505
6-24 months   ZVITAMBO         ZIMBABWE                       >=30               0     1704    9505
6-24 months   ZVITAMBO         ZIMBABWE                       >=30               1       29    9505


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/495f3882-ec7c-41fc-81a4-ea272b3756fc/997f1152-7f4f-44f8-a120-42de0f60bfda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/495f3882-ec7c-41fc-81a4-ea272b3756fc/997f1152-7f4f-44f8-a120-42de0f60bfda/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/495f3882-ec7c-41fc-81a4-ea272b3756fc/997f1152-7f4f-44f8-a120-42de0f60bfda/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/495f3882-ec7c-41fc-81a4-ea272b3756fc/997f1152-7f4f-44f8-a120-42de0f60bfda/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.0968851   0.0856154   0.1081548
0-24 months   COHORTS          INDIA                          <20                  NA                0.1419219   0.1010856   0.1827582
0-24 months   COHORTS          INDIA                          >=30                 NA                0.0912833   0.0740545   0.1085120
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.0521336   0.0414407   0.0628264
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.0470395   0.0251799   0.0688991
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.0506109   0.0351975   0.0660243
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.1230485   0.0900073   0.1560898
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.1711707   0.1007868   0.2415546
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.1676071   0.0795931   0.2556211
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0914351   0.0657416   0.1171287
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1286759   0.0241235   0.2332283
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1544010   0.1192129   0.1895890
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0545947   0.0483883   0.0608011
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0581853   0.0518886   0.0644821
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0547998   0.0433692   0.0662303
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.0488113   0.0362504   0.0613723
0-24 months   Keneba           GAMBIA                         <20                  NA                0.0498295   0.0264218   0.0732372
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.0793652   0.0613949   0.0973355
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0082468   0.0046371   0.0118566
0-24 months   PROBIT           BELARUS                        <20                  NA                0.0062609   0.0019798   0.0105420
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.0084754   0.0038058   0.0131450
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.0873329   0.0617476   0.1129183
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.0639487   0.0138363   0.1140610
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.0857093   0.0327504   0.1386681
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
0-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0193768   0.0158594   0.0228942
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0140211   0.0074175   0.0206247
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0143336   0.0084784   0.0201888
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0611440   0.0402763   0.0820117
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0674157   0.0152924   0.1195391
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0583658   0.0296873   0.0870443
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.1033215   0.0719024   0.1347407
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.1089577   0.0496640   0.1682515
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.1052672   0.0507776   0.1597568
0-6 months    IRC              INDIA                          [20-30)              NA                0.1568047   0.1179920   0.1956175
0-6 months    IRC              INDIA                          <20                  NA                0.1428571   0.0267838   0.2589305
0-6 months    IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.0146290   0.0070204   0.0222377
0-6 months    Keneba           GAMBIA                         <20                  NA                0.0265781   0.0084027   0.0447535
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.0524968   0.0368514   0.0681422
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.0846825   0.0570952   0.1122698
0-6 months    PROBIT           BELARUS                        <20                  NA                0.0699631   0.0419257   0.0980005
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.0756588   0.0472620   0.1040556
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0201794   0.0126432   0.0277156
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0419580   0.0090891   0.0748270
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478   0.0188278   0.0486678
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
6-24 months   COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
6-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
6-24 months   COHORTS          INDIA                          [20-30)              NA                0.0969458   0.0856165   0.1082750
6-24 months   COHORTS          INDIA                          <20                  NA                0.1409128   0.0993615   0.1824641
6-24 months   COHORTS          INDIA                          >=30                 NA                0.0921534   0.0747953   0.1095115
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.0522593   0.0415615   0.0629571
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.0465675   0.0247126   0.0684224
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.0507385   0.0353253   0.0661518
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.1240922   0.0909674   0.1572171
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.1717213   0.1013447   0.2420978
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.1602950   0.0786272   0.2419628
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0901675   0.0651953   0.1151396
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1319594   0.0278015   0.2361174
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1541600   0.1197268   0.1885931
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.0544931   0.0483063   0.0606798
6-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.0580912   0.0518270   0.0643555
6-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.0561090   0.0441238   0.0680942
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.0480019   0.0356694   0.0603343
6-24 months   Keneba           GAMBIA                         <20                  NA                0.0483107   0.0252581   0.0713634
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.0791049   0.0611843   0.0970255
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
6-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
6-24 months   PROBIT           BELARUS                        [20-30)              NA                0.0082649   0.0046482   0.0118815
6-24 months   PROBIT           BELARUS                        <20                  NA                0.0061784   0.0019232   0.0104335
6-24 months   PROBIT           BELARUS                        >=30                 NA                0.0084339   0.0037920   0.0130758
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.0873329   0.0617476   0.1129183
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.0639487   0.0138363   0.1140610
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.0857093   0.0327504   0.1386681
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
6-24 months   SAS-FoodSuppl    INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0192957   0.0158058   0.0227856
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0143686   0.0076750   0.0210623
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0137969   0.0082009   0.0193930


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
0-24 months   COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567829   0.0526732   0.0608927
0-24 months   Keneba           GAMBIA                         NA                   NA                0.0590421   0.0496532   0.0684311
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0175697   0.0149283   0.0202111
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0308975   0.0233849   0.0384101
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0810551   0.0555982   0.1065120
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
6-24 months   COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567829   0.0526732   0.0608927
6-24 months   Keneba           GAMBIA                         NA                   NA                0.0590421   0.0496532   0.0684311
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0175697   0.0149283   0.0202111


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           1.4648479   1.0744465   1.997102
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           0.9421808   0.7553936   1.175155
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           0.9022880   0.5429753   1.499375
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9707919   0.6723904   1.401622
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.3910825   0.8505918   2.275017
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.3621219   0.7548785   2.457847
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4072919   0.6464296   3.063706
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.6886397   1.1982982   2.379628
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0657685   0.9194103   1.235425
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0037554   0.7896988   1.275834
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0208592   0.5989626   1.739931
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.6259579   1.1567702   2.285449
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.7591904   0.4642880   1.241407
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           1.0277198   0.6754335   1.563748
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.7322397   0.3093512   1.733224
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9814083   0.6471965   1.488207
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0858586   0.4578734   2.575142
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           2.0476190   1.2995746   3.226243
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7236008   0.4368549   1.198563
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7397315   0.4731055   1.156619
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.1025734   0.4735529   2.567122
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9545626   0.5247893   1.736296
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.0545501   0.5652056   1.967560
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0188310   0.5585937   1.858268
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          <20                  [20-30)           0.9110512   0.3896386   2.130216
0-6 months    IRC              INDIA                          >=30                 [20-30)           1.3194535   0.6200390   2.807819
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.8168011   0.7694465   4.289793
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           3.5885312   1.9705321   6.535065
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           0.8261812   0.5730814   1.191062
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.8934404   0.7503456   1.063824
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           2.0792541   0.8729867   4.952306
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.6723900   0.9375588   2.983160
6-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
6-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
6-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <20                  [20-30)           1.4535216   1.0588171   1.995364
6-24 months   COHORTS          INDIA                          >=30                 [20-30)           0.9505665   0.7621260   1.185600
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           0.8910860   0.5340780   1.486738
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9708995   0.6731166   1.400420
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.3838194   0.8476742   2.259071
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2917408   0.7265427   2.296622
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4634925   0.6919584   3.095288
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.7097072   1.2050743   2.425659
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0660295   0.9194909   1.235922
6-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0296539   0.8066473   1.314313
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0064346   0.5864840   1.727090
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.6479540   1.1728624   2.315491
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
6-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        <20                  [20-30)           0.7475466   0.4573274   1.221938
6-24 months   PROBIT           BELARUS                        >=30                 [20-30)           1.0204542   0.6695396   1.555288
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           0.7322397   0.3093512   1.733224
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9814083   0.6471965   1.488207
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0858586   0.4578734   2.575142
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 [20-30)           2.0476190   1.2995746   3.226243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7446550   0.4518286   1.227260
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7150277   0.4586358   1.114751


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0026724   -0.0042557   0.0096006
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0009063   -0.0076521   0.0058395
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0109548   -0.0099526   0.0318622
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0255275    0.0082842   0.0427709
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0021882   -0.0022455   0.0066219
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0102308    0.0003886   0.0200730
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0001663   -0.0009866   0.0006541
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0038776   -0.0101843   0.0024291
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0018071   -0.0038130   0.0001988
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0001827   -0.0134459   0.0130805
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0060259   -0.0135602   0.0256120
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0023992   -0.0135867   0.0183852
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0162684    0.0085232   0.0240137
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0036274   -0.0077468   0.0004920
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0052609   -0.0001296   0.0106515
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0026117   -0.0043892   0.0096127
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0010320   -0.0077749   0.0057110
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0099111   -0.0110416   0.0308638
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0267952    0.0097628   0.0438275
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0022899   -0.0022150   0.0067947
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0110402    0.0013640   0.0207165
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0001843   -0.0009992   0.0006306
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0038776   -0.0101843   0.0024291
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0017260   -0.0037037   0.0002518


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
0-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0268433   -0.0452241   0.0939417
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0176912   -0.1582387   0.1058015
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0817503   -0.0877524   0.2248396
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2182536    0.0637392   0.3472680
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0385363   -0.0430214   0.1137167
0-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1732795   -0.0092213   0.3227780
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
0-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0205758   -0.1278896   0.0765275
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0464632   -0.1224801   0.0244056
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1028541   -0.2220797   0.0047398
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0029965   -0.2459623   0.1925903
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0551078   -0.1417861   0.2180486
0-6 months    IRC              INDIA                          [20-30)              NA                 0.0150703   -0.0905985   0.1105008
0-6 months    Keneba           GAMBIA                         [20-30)              NA                 0.5265297    0.2517815   0.7003894
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0447520   -0.0918965   0.0003569
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.2067954   -0.0268777   0.3872947
6-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
6-24 months   COHORTS          INDIA                          [20-30)              NA                 0.0262335   -0.0466253   0.0940204
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0201450   -0.1606022   0.1033140
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0739616   -0.0958366   0.2174498
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2290917    0.0786798   0.3549478
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0403265   -0.0425313   0.1165990
6-24 months   Keneba           GAMBIA                         [20-30)              NA                 0.1869893    0.0080734   0.3336337
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
6-24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0228066   -0.1293794   0.0737096
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                -0.0464632   -0.1224801   0.0244056
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0982357   -0.2158204   0.0079772
